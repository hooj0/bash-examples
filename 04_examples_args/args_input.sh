#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-27 22:25:13
# @copyright by hoojo@2018
# @changelog Added python3 `args->args input` example

# ----------------------------------------------------------------------
# 	Shell 传递参数
#-----------------------------------------------------------------------
# 我们可以在执行 Shell 脚本时，向脚本传递参数，脚本内获取参数的格式为：$n。
#		n 代表一个数字，1 为执行脚本的第一个参数，2 为执行脚本的第二个参数，以此类推……
#
# $0 代表当前执行脚本的文件名
#-----------------------------------------------------------------------


# 以下实例我们向脚本传递三个参数，并分别输出，其中 $0 为执行的文件名：

echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";

# 为脚本设置可执行权限，并执行脚本，输出结果如下所示：
#-----------------------------------------------------------------------
#	$ chmod +x args_input.sh 
#	$ ./args_input.sh 1 2 3
#-----------------------------------------------------------------------
# 输出结果
#-----------------------------------------------------------------------
# $ ./args_input.sh 1 2 3
# Shell 传递参数实例！
# 执行的文件名：./args_input.sh
# 第一个参数为：1
# 第二个参数为：2
# 第三个参数为：3