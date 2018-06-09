#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-30 20:48:11
# @copyright by hoojo@2018
# @changelog Added bash `args -> read` example



# ====================================================================================
#       read 命令用于获取键盘输入信息
# ====================================================================================
# 它的语法形式一般是：
# 		read [-options] [variable...]
# read 用法:
#       read [-ers] [-a 数组] [-d 分隔符] [-i 缓冲区文字] [-n 读取字符数] [-N 读取字符数] [-p 提示符] [-t 超时] [-u 文件描述符] [名称 ...]
# ------------------------------------------------------------------------------------
# read 选项
# ====================================================================================
# 选项 	        说明
# ------------------------------------------------------------------------------------
# -a array 	    把输入赋值到数组 array 中，从索引号零开始。我们 将在第36章中讨论数组问题
# -d delimiter 	用字符串 delimiter 中的第一个字符指示输入结束，而不是一个换行符
# -e 	        使用 Readline 来处理输入。这使得与命令行相同的方式编辑输入
# -n num 	    读取 num 个输入字符，而不是整行
# -p prompt 	为输入显示提示信息，使用字符串 prompt
# -r Raw mode.  不把反斜杠字符解释为转义字符
# -s Silent mode. 不会在屏幕上显示输入的字符。当输入密码和其它确认信息的时候，这会很有帮助
# -t seconds 	超时. 几秒钟后终止输入。若输入超时，read 会返回一个非零退出状态
# -u fd 	    使用文件描述符 fd 中的输入，而不是标准输入
# ------------------------------------------------------------------------------------



# ====================================================================================
# 示例：读取键盘输入的内容并将其赋值给shell变量
# ====================================================================================
# -p 参数由于设置提示信息：
read -p "input a val:" a    # 获取键盘输入的 a 变量数字
read -p "input b val:" b    # 获取键盘输入的 b 变量数字
r=$[a+b]                    # 计算a+b的结果 赋值给r  不能有空格
echo "result = ${r}"        # 输出显示结果 r
echo `expr $a + $b`


# output：
# ------------------------------------------------------------------------------------
# input a val:1
# input b val:2
# result = 3



# ====================================================================================
# 示例：同时读取多个参数
# ------------------------------------------------------------------------------------
# read 命令一个一个词组地接收输入的参数，每个词组需要使用空格进行分隔；
#	如果输入的词组个数大于需要的参数个数，则多出的词组将被作为整体为最后一个参数接收。
# ====================================================================================
read firstStr secondStr
echo "第一个参数:$firstStr; 第二个参数:$secondStr"

# 执行测试：
# ------------------------------------------------------------------------------------
# $ sh test.sh
# 一 二 三 四
# 第一个参数:一; 第二个参数:二 三 四



# ====================================================================================
# 实例：读取密码，现在此时和超时
# ------------------------------------------------------------------------------------
# read 参数说明：
# ------------------------------------------------------------------------------------
# -p 输入提示文字
# -n 输入字符长度限制(达到6位，自动结束)
# -t 输入限时
# -s 隐藏输入内容
# ====================================================================================
read -p "请输入一段文字:" -n 6 -t 5 -s password
echo "\npassword is $password"


# 执行测试：
# ------------------------------------------------------------------------------------
# $ sh test.sh
# 请输入一段文字:
# password is 123123



# ====================================================================================
# 示例：read 结合 IFS 设置读取输入字符分隔界限
# ====================================================================================
FILE=/etc/passwd
read -p "Enter a user name > " user_name
# 把 grep 命令的输入结果赋值给变量 file_info。
# grep 命令使用的正则表达式 确保用户名只会在 /etc/passwd 文件中匹配一行。
file_info=$(grep "^$user_name:" $FILE)
if [ -n "$file_info" ]; then
    # 对一个变量的赋值操作，一个带有一串参数的 read 命令，和一个奇怪的新的重定向操作符
    IFS=":" read user pw uid gid name home shell <<< "$file_info"
    echo "User = '$user'"
    echo "UID = '$uid'"
    echo "GID = '$gid'"
    echo "Full Name = '$name'"
    echo "Home Dir. = '$home'"
    echo "Shell = '$shell'"
else
    echo "No such user '$user_name'" >&2
    exit 1
fi


# IFS=":" read user pw uid gid name home shell <<< "$file_info"
# 效果等同上面的语句
OLD_IFS="$IFS"
IFS=":"
read user pw uid gid name home shell <<< "$file_info"
IFS="$OLD_IFS"



# ====================================================================================
# 示例：校正各种输入
# ====================================================================================
invalid_input () {
    echo "Invalid input '$REPLY'" >&2
    exit 1
}

read -p "Enter a single item > "

# input is empty (invalid)
[[ -z $REPLY ]] && invalid_input

# input is multiple items (invalid)
(( $(echo $REPLY | wc -w) > 1 )) && invalid_input

# is input a valid filename?
if [[ $REPLY =~ ^[-[:alnum:]\._]+$ ]]; then

    echo "'$REPLY' is a valid filename."
    if [[ -e $REPLY ]]; then
        echo "And file '$REPLY' exists."
    else
        echo "However, file '$REPLY' does not exist."
    fi

    # is input a floating point number?
    if [[ $REPLY =~ ^-?[[:digit:]]*\.[[:digit:]]+$ ]]; then
        echo "'$REPLY' is a floating point number."
    else
        echo "'$REPLY' is not a floating point number."
    fi

    # is input an integer?
    if [[ $REPLY =~ ^-?[[:digit:]]+$ ]]; then
        echo "'$REPLY' is an integer."
    else
        echo "'$REPLY' is not an integer."
    fi
else
    echo "The string '$REPLY' is not a valid filename."
fi



# ====================================================================================
# 示例：构建一个菜单驱动程序来执行 上述菜单中的任务
# ====================================================================================
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
    if [[ $REPLY == 0 ]]; then
        echo "Program terminated."
        exit
    fi
    if [[ $REPLY == 1 ]]; then
        echo "Hostname: $HOSTNAME"
        uptime
        exit
    fi
    if [[ $REPLY == 2 ]]; then
        df -h
        exit
    fi
    if [[ $REPLY == 3 ]]; then
        if [[ $(id -u) -eq 0 ]]; then
            echo "Home Space Utilization (All Users)"
            du -sh /home/*
        else
            echo "Home Space Utilization ($USER)"
            du -sh $HOME
        fi
        exit
    fi
else
    echo "Invalid entry." >&2
    exit 1
fi