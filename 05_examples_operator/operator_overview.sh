#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-29 21:07:50
# @copyright by hoojo@2018
# @changelog Added bash `operator -> overview` example

#----------------------------------------------------------------
# Shell 基本运算符
#----------------------------------------------------------------
# Shell 和其他编程语言一样，支持多种运算符，包括：
#
#	数学运算符
#	关系运算符
#	布尔运算符
#	字符串运算符
#	文件测试运算符
#
# 原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
# expr 是一款表达式计算工具，使用它能完成表达式的求值操作。
#----------------------------------------------------------------


# 例如，两个数相加(注意使用的是反引号 ` 而不是单引号 ')：
#----------------------------------------------------------------
val=`expr 2 + 2`
echo "两数之和为 : $val"

# 运行实例 »
#----------------------------------------------------------------
#	执行脚本，输出结果如下所示：
#
# 		两数之和为 : 4
#----------------------------------------------------------------

# 两点注意：
#----------------------------------------------------------------

# 表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2，这与我们熟悉的大多数编程语言不一样。
# 完整的表达式要被 ` ` 包含，注意这个字符不是常用的单引号，在 Esc 键下边。
#----------------------------------------------------------------