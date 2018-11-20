#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-04 22:54:41
# @copyright by hoojo@2018
# @changelog Added bash `process->process case` example



# ======================================================================
#					流程语句———— case
# ======================================================================
# case语句为多选择语句。可以用case语句匹配一个值与一个模式，如果匹配成功，执行相匹配的命令。
# -----------------------------------------------------------------------------
# case语句格式如下：
#
# case 值 in
# 模式1)
#    command1
#    command2
#    ...
#    commandN
#    ;;
# 模式2)
#    command1
#    command2
#    ...
#    commandN
#   ;;
# esac
# -----------------------------------------------------------------------------
# case工作方式如上所示。取值后面必须为单词in，每一模式必须以右括号结束。
# 取值可以为变量或常数。匹配发现取值符合某一模式后，其间所有命令开始执行直至 ;; 结束
#
# 取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。
# 如果无一匹配模式，使用星号 * 捕获该值，再执行后面的命令。
# -----------------------------------------------------------------------------
# case的语法和Java family语言差别很大，
# 它需要一个esac（就是case反过来）作为结束标记，
# 每个case分支用右圆括号，用两个分号表示break。
# -----------------------------------------------------------------------------



# -----------------------------------------------------------------------------
# 下面的脚本提示输入1到4，与每一种模式进行匹配：
# -----------------------------------------------------------------------------
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)
    	echo '你选择了 1'
    ;;
    2)
    	echo '你选择了 2'
    ;;
    3)
    	echo '你选择了 3'
    ;;
    4)
    	echo '你选择了 4'
    ;;
    *)
    	echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

read status

# 输入不同的内容，会有不同的结果，例如：
# -----------------------------------------------------------------------------
# 输入 1 到 4 之间的数字:
# 你输入的数字为:
# 3
# 你选择了 3



# =================================================================
# 示例：用户选项的逻辑流程，使用 case 语句
# =================================================================
clear
echo "
Please Select:
1. Display System Information
2. Display Disk Space
3. Display Home Space Utilization
0. Quit
"
read -p "Enter selection [0-3] > "
case $REPLY in
    0)  echo "Program terminated."
        exit
        ;;
    1)  echo "Hostname: $HOSTNAME"
        uptime
        ;;
    2)  df -h
        ;;
    3)  if [[ $(id -u) -eq 0 ]]; then
            echo "Home Space Utilization (All Users)"
            du -sh /home/*
        else
            echo "Home Space Utilization ($USER)"
            du -sh $HOME
        fi
        ;;
    *)  echo "Invalid entry" >&2
        exit 1
        ;;
esac



# =================================================================
# 示例：case 模式实例
# -----------------------------------------------------------------
# 模式 	描述
# -----------------------------------------------------------------
# a) 	        若单词为 “a”，则匹配
# [[:alpha:]]) 	若单词是一个字母字符，则匹配
# ???) 	        若单词只有3个字符，则匹配
# *.txt) 	    若单词以 “.txt” 字符结尾，则匹配
# *) 	        匹配任意单词。把这个模式做为 case 命令的最后一个模式，
#               是一个很好的做法， 可以捕捉到任意一个与先前模式不匹配的数值；
#               也就是说，捕捉到任何可能的无效值。
# =================================================================
read -p "enter word > "
case $REPLY in
    [[:alpha:]])        echo "is a single alphabetic character." ;;
    [ABC][0-9])         echo "is A, B, or C followed by a digit." ;;
    ???)                echo "is three characters long." ;;
    *.txt)              echo "is a word ending in '.txt'" ;;
    *)                  echo "is something else." ;;
esac



# =================================================================
# 示例：用竖线字符作为分隔符，把多个模式结合起来，达到 “或” 的效果
# =================================================================
clear
echo "
Please Select:
A. Display System Information
B. Display Disk Space
C. Display Home Space Utilization
Q. Quit
"
read -p "Enter selection [A, B, C or Q] > "
case $REPLY in
q|Q) echo "Program terminated."
     exit
     ;;
a|A) echo "Hostname: $HOSTNAME"
     uptime
     ;;
b|B) df -h
     ;;
c|C) if [[ $(id -u) -eq 0 ]]; then
         echo "Home Space Utilization (All Users)"
         du -sh /home/*
     else
         echo "Home Space Utilization ($USER)"
         du -sh $HOME
     fi
     ;;
*)   echo "Invalid entry" >&2
     exit 1
     ;;
esac


# =================================================================
# 示例：执行多个动作，正确的终止命令。使用 “;;&” 结束流程
# =================================================================
read -n 1 -p "Type a character > "
echo
case $REPLY in
    [[:upper:]])    echo "'$REPLY' is upper case." ;;&
    [[:lower:]])    echo "'$REPLY' is lower case." ;;&
    [[:alpha:]])    echo "'$REPLY' is alphabetic." ;;&
    [[:digit:]])    echo "'$REPLY' is a digit." ;;&
    [[:graph:]])    echo "'$REPLY' is a visible character." ;;&
    [[:punct:]])    echo "'$REPLY' is a punctuation symbol." ;;&
    [[:space:]])    echo "'$REPLY' is a whitespace character." ;;&
    [[:xdigit:]])   echo "'$REPLY' is a hexadecimal digit." ;;&
esac

# output:
#-------------------------------------------------------------------
#Type a character > a
#'a' is lower case.
#'a' is alphabetic.
#'a' is a visible character.
#'a' is a hexadecimal digit.