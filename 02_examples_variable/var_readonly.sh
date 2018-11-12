#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-27 16:04:25
# @copyright by hoojo@2018
# @changelog Added bash `variable->var readonly` example

##################################################################
#							只读变量
##################################################################

# 使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被改变。
myUrl="https://github.com/hooj0"
# 设置为只读
readonly myUrl

# 下面的例子尝试更改只读变量，结果报错：
myUrl="https://hooj0.github.io/"

# 运行脚本，结果如下：
# /bin/sh: NAME: This variable is read only.


# 使用带有-r（只读）选项的内部命令 declare
declare -r TITLE="Page Title"

TITLE="new title"
