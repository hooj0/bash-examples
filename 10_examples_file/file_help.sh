#!/bin/bash

# ======================================================================
#					Shell 输入/输出重定向————Here Document
# ======================================================================
# Here Document 是 Shell 中的一种特殊的重定向方式，用来将输入重定向到一个交互式 Shell 脚本或程序。
# ----------------------------------------------------------------------





# ----------------------------------------------------------------------
# 实例
# ----------------------------------------------------------------------
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