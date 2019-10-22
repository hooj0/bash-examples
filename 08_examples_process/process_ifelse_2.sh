#!/bin/bash
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-11-09
# copyright by hoojo@2018
# @changelog Added bash `process -> if else` example



# =================================================================
#       流程控制 —— if 分支结构
# =================================================================
# 语法如下：
# if commands; then
#     commands
# [elif commands; then
#     commands...]
# [else
#     commands]
# fi
# -----------------------------------------------------------------




# =================================================================
# 示例：if else 判断语句示例
# =================================================================
x=5
if [ $x = 5 ]; then
    echo "x equals 5."
else
    echo "x does not equal 5."
fi


# =================================================================
# 示例：if else 判断语句示例单行
# =================================================================
x=5
if [ $x = 5 ]; then echo "equals 5"; else echo "does not equal 5"; fi

# output:
#-------------------------------------------------------------------
#







read exits