#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-18 11:19:11
# @copyright by hoojo@2018
# @changelog Added bash `file -> help` example

# =======================================================================================
#					Shell 输入/输出重定向————Here Document
# =======================================================================================
# Here Document 是 Shell 中的一种特殊的重定向方式，用来将输入重定向到一个交互式 Shell 脚本或程序
# ---------------------------------------------------------------------------------------





# ---------------------------------------------------------------------------------------
# 示例：函数中插入 Here Document
# ---------------------------------------------------------------------------------------
function help() {
cat << HELP
USAGE: help function test [-h] "file_help.sh 1 2"
OPTIONS: -h help text
EXAMPLE: xtitlebar "cvs"
HELP
exit 0
}

# in case of error or if -h is given we call the function help:
if [[ $1 == '' || $1 == '-h' ]]; then
  help
fi

# send the escape sequence to change the xterm titelbar:
echo -e "\033]0;$1\007"