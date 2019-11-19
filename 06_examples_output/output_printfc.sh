#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-30 22:55:48
# @copyright by hoojo@2018
# @changelog Added bash `output->printfc output` example

# ===========================================================
#			printf的转义序列
# ===========================================================
# 序列	说明
# -----------------------------------------------------------
# \a	警告字符，通常为ASCII的BEL字符
# \b	后退,相当于删除前一个字符
# \c	抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），
#		而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
# \f	换页（formfeed）
# \n	换行
# \r	回车（Carriage return）
# \t	水平制表符
# \v	垂直制表符
# \\	一个字面上的反斜杠字符
# \ddd	表示1到3位数八进制值的字符。仅在格式字符串中有效
# \0ddd	表示1到3位的八进制值字符

# 实例
# -----------------------------------------------------------
printf "a string, no processing:<%s>\n" "A\nB"
#a string, no processing:<A\nB>

printf "a string, no processing:<%b>\n" "A\nB"
#a string, no processing:<A
#B>

printf "www.xxx.com \a"
#www.xxx.com $                  #不换行

printf "\n警告\a字符"
printf "\ngo back\b gogogo\n"