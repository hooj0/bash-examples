#!/bin/sh
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-07-01
# copyright by hoojo @ 2018



# =================================================================
#	clean —— 在脚本退出的时候强制清理资源
# =================================================================
# 定义了一个执行清理或释放资源的bash函数，然后在退出时注册要自动调用的函数。
# -----------------------------------------------------------------




# =================================================================
#	 示例：以下是如何使用退出时来强大地清理临时目录：
# =================================================================
# 现在脚本可以在“$scratch”目录中写入文件。
# 退出时会自动删除，无论是否出错，或正常完成。

# 生成一个临时目录
scratch=$(mktemp -d -t tmp.XXXXXXXXXX)
function finish {
  rm -rf "$scratch"
}

trap finish EXIT

# output:
#-------------------------------------------------------------------
#