#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-31 20:58:43
# @copyright by hoojo@2018
# @changelog Added bash `test -> file` example



# ==============================================================================
#       shell test 命令————文件测试
# ==============================================================================
# Shell中的 test 命令用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试。
# ------------------------------------------------------------------------------
# 	参数			 说明                             结果
# ------------------------------------------------------------------------------
# -e 文件名		如果文件存在						则为真
# -r 文件名		如果文件存在且可读				    则为真
# -w 文件名		如果文件存在且可写				    则为真
# -x 文件名		如果文件存在且可执行				则为真
# -s 文件名		如果文件存在且不为空				则为真
# -d 文件名		如果文件存在且为目录				则为真
# -f 文件名		如果文件存在且为普通文件			    则为真
# -c 文件名		如果文件存在且为字符型特殊文件 ASCII	则为真
# -b 文件名		如果文件存在且为块特殊文件二级制		则为真
# ------------------------------------------------------------------------------


# ==============================================================================
# 示例：test 判断文件
# ==============================================================================
cd /bin

if test -e ./bash; then
    echo '文件已存在!'
else
    echo '文件不存在!'
fi


if test -r ./bash; then
	echo "文件可读"
else
	echo "文件不可读"
fi	

if test -w ./bash; then
	echo "文件可写"
else
	echo "文件不可写"
fi	

if test -x ./bash; then
	echo "文件可执行"
else
	echo "文件不可执行"
fi


if test -s ./bash; then
	echo "文件不为空"
else
	echo "文件为空"
fi


if test -f ./bash; then
	echo "文件"
else
	echo "目录"
fi


if test -c ./bash; then
	echo "文件特殊字符"
else
	echo "文件普通文本"
fi



# ==============================================================================
# 示例：逻辑操作符 test 判断语句
# ------------------------------------------------------------------------------
# Shell还提供了与( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，
#	其优先级为："!"最高，"-a"次之，"-o"最低。
# ==============================================================================

cd /bin
if test -e ./notFile -o -e ./bash; then
    echo '至少有一个文件存在!'
else
    echo '两个文件都不存在'
fi


# output：
# ------------------------------------------------------------------------------
# 至少有一个文件存在!