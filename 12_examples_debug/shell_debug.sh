#!/bin/bash
set -euo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

# =================================================================
#		shell —— debug 脚本调试
# =================================================================
# -n 将会只检查脚本的语法错误而不执行脚本。 
# -v 将会在命令执行前输出它们。
# -x 将会在命令行处理之后输出命令。
#
# bash -n scriptname
# bash -v scriptname
# bash -x scriptname
# -----------------------------------------------------------------
# set -euo pipefail
# trap "echo 'error: Script failed: see failed command above'" ERR
# 一个好的习惯是在脚本文件开头这样写，这会使它能够检测一些错误，并在错误发生时中断程序并输出信息
# -----------------------------------------------------------------




# =================================================================
#	 示例1：检查脚本的语法错误
# =================================================================
bash -n shell_debug.sh

# output:
#-------------------------------------------------------------------
# 


# =================================================================
#	 示例2：执行脚本并输出脚本
# =================================================================
bash -v shell_debug.sh


# output:
#-------------------------------------------------------------------
#



# =================================================================
#	 示例3：在命令行处理之后输出命令
# =================================================================
bash -x shell_debug.sh


# output:
#-------------------------------------------------------------------
#







read exits