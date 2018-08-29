#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-31 22:43:22
# @copyright by hoojo@2018
# @changelog Added python3 `process->process ifelse` example

# ======================================================================
#					流程语句————判断逻辑流程
# ======================================================================
# 在sh/bash里可不能这么写，如果else分支没有语句执行，就不要写这个else。

# ----------------------------------------------------------------------
# 		if
# ----------------------------------------------------------------------
# if 语句语法格式：
# ----------------------------------------------------------------------
# if condition
# then
#    command1 
#    command2
#    ...
#    commandN 
# fi
# ----------------------------------------------------------------------


# 写成一行（适用于终端命令提示符）：
# ----------------------------------------------------------------------

if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi  # 末尾的fi就是if倒过来拼写，后面还会遇到类似的。

# ----------------------------------------------------------------------
# 		if else
# ----------------------------------------------------------------------
# if else 语法格式：
# ----------------------------------------------------------------------
# if condition
# then
#    command1 
#    command2
#    ...
#    commandN
# else
#    command
# fi
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
#			if else-if else
# ----------------------------------------------------------------------
# if else-if else 语法格式：
# ----------------------------------------------------------------------

# if condition1
# then
#    command1
# elif condition2 
# then 
#    command2
# else
#    commandN
# fi
# ----------------------------------------------------------------------

# 以下实例判断两个变量是否相等：
# ----------------------------------------------------------------------

a=10
b=20

if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi


# 输出结果：
# a 小于 b


# if else语句经常与test命令结合使用，如下所示：
# ----------------------------------------------------------------------

num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
    echo '两个数字相等!'
else
    echo '两个数字不相等!'
fi

# 输出结果：
# 两个数字相等!