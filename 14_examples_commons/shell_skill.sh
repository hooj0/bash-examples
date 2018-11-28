#!/bin/bash
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-11-27
# copyright by hoojo@2018
# @changelog Added bash `shell skill` example



# =================================================================
#           shell skill —— 小技巧
# =================================================================
#
# -----------------------------------------------------------------




# =================================================================
# 示例：组命令和子 shell
# -----------------------------------------------------------------
# 组命令：
#       { command1; command2; [command3; ...] }
# -----------------------------------------------------------------
# 子 shell：
#       (command1; command2; [command3;...])
# -----------------------------------------------------------------
# 当这个子 shell 退出时，环境副本会消失，
# 所以在子 shell 环境（包括变量赋值）中的任何更改也会消失。
# 因此，在大多数情况下，除非脚本要求一个子 shell，
# 组命令比子 shell 更受欢迎。组命令运行很快并且占用的内存也少。
# =================================================================
# 一个对多个命令执行重定向的脚本片段
ls -l > output.txt
echo "Listing of foo.txt" >> output.txt
cat foo.txt >> output.txt


# 使用一个组命令，达到相似的效果
#-------------------------------------------------------------------
{ ls -l; echo "Listing of foo.txt"; cat foo.txt; } > output.txt


# 使用一个子 shell 是相似的：
#-------------------------------------------------------------------
(ls -l; echo "Listing of foo.txt"; cat foo.txt) > output.txt


# 组命令和子 shell 真正闪光的地方是与管道线相结合。
# 当构建一个管道线命令的时候，通常把几个命令的输出结果合并成一个流是很有用的。
# 组命令和子 shell 使这种操作变得很简单：
#-------------------------------------------------------------------
{ ls -l; echo "Listing of foo.txt"; cat foo.txt; } | lpr



# =================================================================
# 示例：当给定一个目录名，打印出目录中的文件列表，
#       伴随着每个文件的文件所有者和组所有者。
#       在文件列表的末尾，脚本打印出属于每个所有者和组的文件数目。
# =================================================================
declare -A files file_group file_owner groups owners
if [[ ! -d "$1" ]]; then
   echo "Usage: array-2 dir" >&2
    exit 1
fi

for i in "$1"/*; do
   owner=$(stat -c %U "$i")
   group=$(stat -c %G "$i")
    files["$i"]="$i"
    file_owner["$i"]=$owner
    file_group["$i"]=$group
    ((++owners[$owner]))
    ((++groups[$group]))
done

# List the collected files
{ for i in "${files[@]}"; do
printf "%-40s %-10s %-10s\n" \
"$i" ${file_owner["$i"]} ${file_group["$i"]}
done } | sort

echo
 List owners
echo "File owners:"
{ for i in "${!owners[@]}"; do
printf "%-10s: %5d file(s)\n" "$i" ${owners["$i"]}
done } | sort

echo
# List groups
echo "File group owners:"
{ for i in "${!groups[@]}"; do
printf "%-10s: %5d file(s)\n" "$i" ${groups["$i"]}
done } | sort




# =================================================================
# 示例：进程替换
#    下面 REPLY 变量的内容总是为空，是因为这个 read 命令在一个子 shell 中执行，
# 所以当该子 shell 终止的时候， 它的 REPLY 副本会被毁掉。
# 因为管道线中的命令总是在子 shell 中执行，任何给变量赋值的命令都会遭遇这样的问题。
# 幸运地是，shell 提供了一种奇异的展开方式，叫做进程替换，
# 它可以用来解决这种麻烦。进程替换有两种表达方式：
# ------------------------------------------------------------------
# 一种适用于产生标准输出的进程：
#   <(list)
# ------------------------------------------------------------------
# 另一种适用于接受标准输入的进程：
#   >(list)
# =================================================================
echo "foo" | read
echo $REPLY     # 空值

# 进程替换
read < <(echo "foo")
echo $REPLY     # foo

# 进程替换允许我们把一个子 shell 的输出结果当作一个用于重定向的普通文件。
# 事实上，因为它是一种展开形式，我们可以检验它的真实值：
echo <(echo "foo")  #/dev/fd/63
# 看到子 shell 的输出结果，由一个名为 /dev/fd/63 的文件提供


# =================================================================
# 示例：进程替换经常被包含 read 命令的循环用到。
# 这里是一个 read 循环的例子，处理一个目录列表的内容，内容创建于一个子 shell：
# =================================================================
while read attr links owner group size date time filename; do
    cat <<- EOF
        Filename:     $filename
        Size:         $size
        Owner:        $owner
        Group:        $group
        Modified:     $date $time
        Links:        $links
        Attributes:   $attr
EOF
done < <(ls -l | tail -n +2)    # 参数输入



# =================================================================
# 示例：陷进，脚本定义一个陷阱，当脚本运行的时候，
#   这个陷阱每当接受到一个 SIGINT 或 SIGTERM 信号时，就会执行一个 echo 命令。
# =================================================================
# 每次用户试图中断程序时，会打印出这条信息
trap "echo 'I am ignoring you.'" SIGINT SIGTERM
for i in {1..5}; do
    echo "Iteration $i of 5"
    sleep 5
done


# 当用户试图通过按下 Ctrl-c 组合键终止脚本运行的时候，该程序的执行结果看起来像这样：
#-------------------------------------------------------------------
#./trap-demo.sh
#
#Iteration 1 of 5
#Iteration 2 of 5
#I am ignoring you.
#Iteration 3 of 5
#I am ignoring you.
#Iteration 4 of 5
#Iteration 5 of 5



#-------------------------------------------------------------------
# 为每一个信号指定了一个单独的 shell 函数来处理
#-------------------------------------------------------------------
exit_on_signal_SIGINT () {
    echo "Script interrupted." 2>&1
    exit 0
}

# 注意每个信号处理函数中都包含了一个 exit 命令。
# 没有 exit 命令， 信号处理函数执行完后，该脚本将会继续执行。
exit_on_signal_SIGTERM () {
    echo "Script terminated." 2>&1
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM
for i in {1..5}; do
    echo "Iteration $i of 5"
    sleep 5
done


# 当用户在这个脚本执行期间，按下 Ctrl-c 组合键的时候，输出结果看起来像这样:
#-------------------------------------------------------------------
# ./trap-demo.sh
#
#Iteration 1 of 5
#Iteration 2 of 5
#Script interrupted.



# =================================================================
# 示例：创建临时文件夹， 一种创建一个不可预测的（但是仍有意义的）临时文件名的方法
# =================================================================
# 将创建一个由程序名字，程序进程的 ID（PID）文件名，和一个随机整数组成。
# $RANDOM shell 变量 只能返回一个范围在1-32767内的整数值
tempfile=/tmp/$(basename $0).$$.$RANDOM
echo $tempfile      # /tmp/bash.223556.11656

echo $$         # PID
echo $RANDOM    # 随机数 1-32767内的整数值



# =================================================================
# 示例：mktemp 程序
# -----------------------------------------------------------------
# 由于$RANDOM 在计算机术语中不是一个很大的范围，
# 所以一个单一的该变量实例是不足以克服一个坚定的攻击者的。
# 一个比较好的方法是使用 mktemp 程序（不要和 mktemp 标准库函数相混淆）来命名和创建临时文件
# =================================================================
# mktemp 程序接受一个用于创建文件名的模板作为参数。
# 模板包含参数 “X” 字符，随后这些字符会被相应数量的随机字母和数字替换掉。
# 一连串的 “X” 字符越长，则一连串的随机字符也就越长
tempfile=$(mktemp /tmp/foobar.$$.XXXXXXXXXX)
echo $tempfile      # /tmp/foobar.223556.AsrrmZdEvf



# =================================================================
# 示例：异步执行多任务 —— wait 等待
#-------------------------------------------------------------------
# 真正的操作通过父脚本完成。在父脚本中，子脚本被启动， 并被放置到后台运行。
# 子脚本的进程 ID 记录在 pid 变量中，这个变量的值是 $! shell 参数的值，
# 它总是 包含放到后台执行的最后一个任务的进程 ID 号。
# =================================================================
# file 1
#-------------------------------------------------------------------
echo "Parent: starting..."
echo "Parent: launching child script..."
async-child &
pid=$!
echo "Parent: child (PID= $pid) launched."
echo "Parent: continuing..."
sleep 2
echo "Parent: pausing to wait for child to finish..."
# 导致父脚本暂停运行，直到子脚本退出，父脚本随之结束。
wait $pid
echo "Parent: child is finished. Continuing..."
echo "Parent: parent is done. Exiting."


# file2 async-child
#-------------------------------------------------------------------
# async-child : Asynchronous execution demo (child)
echo "Child: child is running..."
sleep 5
echo "Child: child is done. Exiting."

# output:
#-------------------------------------------------------------------
#async-parent
#Parent: starting...
#Parent: launching child script...
#Parent: child (PID= 6741) launched.
#Parent: continuing...
#Child: child is running...
#Parent: pausing to wait for child to finish...
#Child: child is done. Exiting.
#Parent: child is finished. Continuing...
#Parent: parent is done. Exiting.



# =================================================================
# 示例：设置一个命名管道
# =================================================================
# 使用 mkfifo 命令能够创建命令管道：
mkfifo pipe1

# 显示结果，第一个字母是 “p”，表明它是一个命名管道
ls -l pipe1

# output:
#-------------------------------------------------------------------
# prw-rw-rw- 1 Administrator 197121 0 Nov 28 13:02 pipe1


# 使用命名管道
#-------------------------------------------------------------------
# 为了演示命名管道是如何工作的，我们将需要两个终端窗口（或用两个虚拟控制台代替）。
# 在第一个终端中，我们输入一个简单命令，并把命令的输出重定向到命名管道：
ls -l > pipe1


# 按下 Enter 按键之后，命令将会挂起
# 这是因为在管道的另一端没有任何对象来接收数据。这种现象被称为管道阻塞。
# 一旦我们绑定一个进程到管道的另一端，该进程开始从管道中读取输入的时候，
# 管道阻塞现象就不存在了。
# 使用第二个终端窗口，我们输入这个命令：
#-------------------------------------------------------------------
cat < pipe1

# 然后产自第一个终端窗口的目录列表出现在第二个终端中，并作为来自 cat 命令的输出。
# 在第一个终端 窗口中的 ls 命令一旦它不再阻塞，会成功地结束。