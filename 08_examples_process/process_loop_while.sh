#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-03 09:27:43
# @copyright by hoojo@2018
# @changelog Added bash `process -> loop while` example



# ======================================================================
#       流程语句————while 语句
# ======================================================================
# while循环用于不断执行一系列命令，也用于从输入文件中读取数据；
#
# 命令通常为测试条件，其格式为：
# ----------------------------------------------------------------------
# while condition
# do
#    command
# done
# ----------------------------------------------------------------------




# =====================================================================
# 示例：循环递增数字
# =====================================================================
# 以下是一个基本的while循环，测试条件是：
#	如果int小于等于5，那么条件返回真。
#	int从0开始，每次循环处理时，int加1。
#   运行上述脚本，返回数字1到5，然后终止。
# ----------------------------------------------------------------------
int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done


# output：
# ----------------------------------------------------------------------
# 1
# 2
# 3
# 4
# 5

# ======================================================================
# 示例：let 运算
# ======================================================================
# 代码中使用了 Bash let 命令，它用于执行一个或多个表达式，
#	变量计算中不需要加上 $ 来表示变量，具体可查阅：Bash let 命令
# ----------------------------------------------------------------------
a=1
b=3
c=-1
let "c=a+b"
echo "c: $c"


# ======================================================================
# 示例：按 <Ctrl-D> 强制退出循环
# ======================================================================
# while循环可用于读取键盘信息。下面的例子中，
#	输入信息被设置为变量FILM，按<Ctrl-D>结束循环。
# ----------------------------------------------------------------------
echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read FILM
do
    echo "是的！$FILM 是一个好网站"
done


# output：
# ----------------------------------------------------------------------
# 按下 <CTRL-D> 退出
# 输入你最喜欢的网站名: baidu
# 是的！baidu 是一个好网站



# =================================================================
# 示例：循环叠加数字
# =================================================================
count=1
while [ $count -le 5 ]; do
    echo $count
    count=$((count + 1))
done
echo "Finished."



# =================================================================
# 示例：循环选择菜单
# =================================================================
# 一旦 REPLY 等于“0”，则表示选择了“退出”选项，循环就会终止，
# 程序继续执行 done 语句之后的代码
DELAY=3 # Number of seconds to display results
while [[ $REPLY != 0 ]]; do
    clear
    echo "
    Please Select:

        1. Display System Information
        2. Display Disk Space
        3. Display Home Space Utilization
        0. Quit
    "

    read -p "Enter selection [0-3] > "
    if [[ $REPLY =~ ^[0-3]$ ]]; then
        if [[ $REPLY == 1 ]]; then
            echo "Hostname: $HOSTNAME"
            uptime
            sleep $DELAY
        fi
        if [[ $REPLY == 2 ]]; then
            df -h
            sleep $DELAY
        fi
        if [[ $REPLY == 3 ]]; then
            if [[ $(id -u) -eq 0 ]]; then
                echo "Home Space Utilization (All Users)"
                du -sh /home/*
            else
                echo "Home Space Utilization ($USER)"
                du -sh $HOME
            fi
            sleep $DELAY
        fi
    else
        echo "Invalid entry."
        sleep $DELAY
    fi
done
echo "Program terminated."



# =================================================================
# 示例：循环选择菜单，跳出循环
# -----------------------------------------------------------------
# break 命令立即终止一个循环， 且程序继续执行循环之后的语句。
# continue 命令导致程序跳过循环中剩余的语句，且程序继续执行 下一次循环。
# =================================================================
DELAY=3 # Number of seconds to display results
while true; do
    clear
    cat <<- _EOF_
        Please Select:
        1. Display System Information
        2. Display Disk Space
        3. Display Home Space Utilization
        0. Quit
_EOF_
    read -p "Enter selection [0-3] > "
    if [[ $REPLY =~ ^[0-3]$ ]]; then
        if [[ $REPLY == 1 ]]; then
            echo "Hostname: $HOSTNAME"
            uptime
            sleep $DELAY
            continue
        fi
        if [[ $REPLY == 2 ]]; then
            df -h
            sleep $DELAY
            continue
        fi
        if [[ $REPLY == 3 ]]; then
            if [[ $(id -u) -eq 0 ]]; then
                echo "Home Space Utilization (All Users)"
                du -sh /home/*
            else
                echo "Home Space Utilization ($USER)"
                du -sh $HOME
            fi
            sleep $DELAY
            continue
        fi
        if [[ $REPLY == 0 ]]; then
            break
        fi
    else
        echo "Invalid entry."
        sleep $DELAY
    fi
done
echo "Program terminated."



# =================================================================
# 示例：使用循环读取文件
# =================================================================
# 为了重定向文件到循环中，我们把重定向操作符放置到 done 语句之后。
# 循环将使用 read 从重定向文件中读取 字段。
# 这个 read 命令读取每个文本行之后，将会退出，其退出状态为零，直到到达文件末尾。
# 到时候，它的 退出状态为非零数值，因此终止循环。
#------------------------------------------------------------------
while read distro version release; do
    printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
        $distro \
        $version \
        $release
done < distros.txt


sort -k 1,1 -k 2n distros.txt | while read distro version release; do
    printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
        $distro \
        $version \
        $release
done