#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-12 23:03:00
# @copyright by hoojo@2018
# @changelog Added bash `variable -> expand` example



# ==========================================================================
#       变量展开
# ==========================================================================
# 三元运算
# 变量展开
# 变量名展开
# --------------------------------------------------------------------------



# ==========================================================================
# 示例：三元运算符
# ==========================================================================
# 如果 varname 存在而且不为 null，返回它的值，否则返回 word
${varname:-word}

# 如果 varname 存在而且不为 null，返回它的值，否则把word赋值给它并且返回 word
${varname:=word}

# 如果 varname 存在而且不为 null，返回 word，否则返回 null
${varname:+word}

# 它返回 $varname 的子字符串，从 offset 处开始，长度为 length
${varname:offset:length}



# ==========================================================================
# 示例：${parameter:?word}
# ==========================================================================
# 若 parameter 没有设置或为空，展开导致脚本带有错误退出，并且 word 的内容会发送到标准错误。
# 若 parameter 不为空，展开结果是 parameter 的值
# --------------------------------------------------------------------------
foo=
echo ${foo:?"parameter is empty"}   # bash: foo: parameter is empty
echo $?     # 1

foo=bar
echo ${foo:?"parameter is empty"}   # bar
echo $?     # 0



# ==========================================================================
# 示例：返回变量名的参数展开，${!prefix*} 或 ${!prefix@}
# ==========================================================================
# 这种展开会返回以 prefix 开头的已有变量名
echo ${!BASH*}


# output:
# --------------------------------------------------------------------------
# BASH BASH_ARGC BASH_ARGV BASH_COMMAND BASH_COMPLETION
# BASH_COMPLETION_DIR BASH_LINENO BASH_SOURCE BASH_SUBSHELL
# BASH_VERSINFO BASH_VERSION