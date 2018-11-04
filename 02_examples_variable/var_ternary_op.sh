#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-12 23:03:00
# @copyright by hoojo@2018
# @changelog Added bash `variable->var ternary op` example

# ======================================================================
#					变量三元运算
# ======================================================================
# Bash 也支持三元运算符，如下面的例子所示：

${varname:-word}    # 如果 varname 存在而且不为 null，返回它的值，否则返回 word
${varname:=word}    # 如果 varname 存在而且不为 null，返回它的值，否则把word赋值给它并且返回 word
${varname:+word}    # 如果 varname 存在而且不为 null，返回 word，否则返回 null
${varname:offset:length}    # 它返回 $varname 的子字符串，从 offset 处开始，长度为 length