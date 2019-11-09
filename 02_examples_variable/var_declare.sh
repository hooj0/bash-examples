#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-27 12:20:23
# @copyright by hoojo@2018
# @changelog Added bash `variable -> declare` example



# ==========================================================================
# 							声明变量
# ==========================================================================
# 定义变量时，变量名不能加美元符号（$），如：
#   var$temp="st1"
#       var=st1: 未找到命令
# --------------------------------------------------------------------------
# 变量名的命名须遵循如下规则：
#	*、变量名和等号之间不能有空格
#	1、命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
#	2、中间不能有空格，可以使用下划线（_）。
#	3、不能使用标点符号。
#	4、不能使用bash里的关键字（可用help命令查看保留关键字）。
# --------------------------------------------------------------------------






# ==========================================================================
# 示例：变量声明
# ==========================================================================
# var1 = "不能有空格"	# var1: 未找到命令
var1="success"
echo "var1: $var1"

var_2="haha"
echo "var_2:" $var_2


# 有效的 Shell 变量名示例：
USER="jack"
LD_LIBRARY_PATH="/tmp/lib/"
_var=2
var2=3

# 无效的变量命名示例：
# ?var=123
# user*name=runoob



# ==========================================================================
# 示例：除了显式地直接赋值，用语句给变量赋值
# ==========================================================================
# 将 /etc 下目录的文件名循环出来。
for file in `ls /etc`; do
	echo $file;
done

# 或
for file in $(ls /etc); do
	echo $file;
done



# ==========================================================================
# 示例：在同一行中对多个变量赋值
# ==========================================================================
a=5 b="a string"



# ==========================================================================
# 示例：declare 变量大小写转换
# ==========================================================================
# 大小写转换参数展开
# --------------------------------------------------------------------------
# 格式 	            结果
# --------------------------------------------------------------------------
# ${parameter,,} 	把 parameter 的值全部展开成小写字母。
# ${parameter,} 	仅仅把 parameter 的第一个字符展开成小写字母。
# ${parameter^^} 	把 parameter 的值全部转换成大写字母。
# ${parameter^} 	仅仅把 parameter 的第一个字符转换成大写字母（首字母大写）。
# ==========================================================================
# declare 命令可以用来把字符串规范成大写或小写字符
declare -u upper
declare -l lower
if [[ $1 ]]; then
    upper="$1"
    lower="$1"
    echo $upper
    echo $lower
fi


# output:
# --------------------------------------------------------------------------
# xxx.sh aBc
# ABC
# abc



# ==========================================================================
# 示例：变量大小写转换
# ==========================================================================
if [[ $1 ]]; then
    echo ${1,,}
    echo ${1,}
    echo ${1^^}
    echo ${1^}
fi

# output:
# --------------------------------------------------------------------------
# xxx.sh aBc
# abc
# aBc
# ABC
# ABc


