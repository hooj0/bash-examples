#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-27 12:20:23
# @copyright by hoojo@2018
# @changelog Added bash `variable->var declare` example
#####################################################################
# 							声明变量
#####################################################################


#####################################################################
# 定义变量时，变量名不加美元符号（$），如：

#var$temp="st1" # var=st1: 未找到命令

#####################################################################
# 变量名的命名须遵循如下规则：
#	*、变量名和等号之间不能有空格
#	1、命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
#	2、中间不能有空格，可以使用下划线（_）。
#	3、不能使用标点符号。
#	4、不能使用bash里的关键字（可用help命令查看保留关键字）。

# help

# var1 = "不能有空格"	# var1: 未找到命令
var1="success"
echo "var1: $var1"

var_2="haha"
echo "var_2:" $var_2


# 有效的 Shell 变量名示例如下：

USER="jack"
LD_LIBRARY_PATH="/tmp/lib/"
_var=2
var2=3

# 无效的变量命名：
# ?var=123
# user*name=runoob



#####################################################################
# 除了显式地直接赋值，还可以用语句给变量赋值，如：

# 将 /etc 下目录的文件名循环出来。
for file in `ls /etc`; do
	echo $file;
done

# 或
for file in $(ls /etc); do
	echo $file;
done