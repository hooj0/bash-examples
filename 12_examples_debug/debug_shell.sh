#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-21 22:47:15
# @copyright by hoojo@2018
# @changelog Added bash `debug -> shell` example

# 启用
set -euo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

# 禁用
set +euo

# ==============================================================================
#		shell —— debug 脚本调试
# ==============================================================================
# -n 将会只检查脚本的语法错误而不执行脚本。 
# -v 将会在命令执行前输出它们。
# -x 将会在命令行处理之后输出命令。
#
# bash -n scriptname
# bash -v scriptname
# bash -x scriptname
# ------------------------------------------------------------------------------
# set -euo pipefail
# trap "echo 'error: Script failed: see failed command above'" ERR
# 一个好的习惯是在脚本文件开头这样写，这会使它能够检测一些错误，并在错误发生时中断程序并输出信息
#
# -u			如果有任何未定义的变量引用，该设置将导致脚本立即退出
# -e			如果任何命令[1]具有非零退出状态，该选项将指示bash立即退出
# -o pipefail	此设置可防止管道中的错误被屏蔽。
#				如果管道中的任何命令失败，则将使用该返回码作为整个管道的返回码 (echo $?)。
#				默认情况下，管道的返回代码是最后一个命令的代码 - 即使成功。
# ------------------------------------------------------------------------------




# ==============================================================================
# 示例：检查脚本的语法错误
# ==============================================================================
bash -n debug.sh


# ==============================================================================
# 示例：执行脚本并输出脚本
# ==============================================================================
bash -v debug.sh


# ==============================================================================
# 示例：在命令行处理之后输出命令
# ==============================================================================
bash -x debug.sh


# ==============================================================================
# 示例：期望具有非零退出状态的命令
# ------------------------------------------------------------------------------
# 当你想运行一个失败的命令，或者你知道有一个非零的退出代码时会发生什么？
# 你不希望它停止你的脚本，因为这实际上是正确的行为。
# ==============================================================================

# 在严格模式下，下一行中止并出现错误：
count=$( grep -c some-string some-file )

# 但是下面的方式将更好：
count=$( grep -c some-string some-file || true )
echo "count：$count"

# output:
# ------------------------------------------------------------------------------
# 0


# ==============================================================================
# 示例：知道一个命令的返回值，即使该返回值不为零，该怎么办呢？
#	   可以暂时禁用立即退出选项: set +e
# ==============================================================================
set +e
count=$(grep -c some-string some-file)
retval=$?
set -e

# 当一行或多行匹配时，grep的返回码为0;
# 1 如果没有行匹配
# 和2在一个错误
# 这种模式让我们区分它们

echo "return value: $retval"
echo "count: $count"



read exits