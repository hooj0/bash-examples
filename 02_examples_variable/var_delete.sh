#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-27 16:23:26
# @copyright by hoojo@2018
# @changelog Added bash `variable->var delete` example

##############################################################
#						删除变量
##############################################################
# 使用 unset 命令可以删除变量。
#
#	语法：
#		unset variable_name
#
#	变量被删除后不能再次使用。
#	unset 命令不能删除只读变量。
##############################################################



# 实例
var_tmp="remove var"
unset var_tmp

echo $var_tmp

#以上实例执行将没有任何输出。
