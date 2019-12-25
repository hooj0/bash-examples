#!/bin/bash
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-11-12
# copyright by hoojo@2018
# @changelog Added bash `file-> here document` output file text example



# =================================================================
#       Here Documents —— 输出文件内容
# =================================================================
# 一个 here document 是另外一种 I/O 重定向形式
# -----------------------------------------------------------------
# 语法：
# command << token
# text
# token
# -----------------------------------------------------------------



# =================================================================
# 示例：利用 cat 和 here document 输出字符串
# =================================================================
# 字符串_EOF_（意思是“文件结尾”， 一个常见用法）被选作为 token，并标志着嵌入文本的结尾。
# 注意这个 token 必须在一行中单独出现，并且文本行中 没有末尾的空格。
TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated $CURRENT_TIME, by $USER"
cat << _EOF_
<HTML>
         <HEAD>
                <TITLE>$TITLE</TITLE>
         </HEAD>
         <BODY>
                <H1>$TITLE</H1>
                <P>$TIME_STAMP</P>
         </BODY>
</HTML>
_EOF_

# output:
#------------------------------------------------------------------
#



# =================================================================
# 示例：here documents 中的单引号和双引号
# =================================================================
# shell 根本没有注意到引号。它把它们看作是普通的字符。
# 这就允许我们 在一个 here document 中可以随意的嵌入引号
foo="some text"
cat << _EOF_
$foo
"$foo"
'$foo'
\$foo
_EOF_

# output:
#-------------------------------------------------------------------
# some text
# "some text"
# 'some text'
# $foo



# =================================================================
# 示例：Here documents 可以和任意能接受标准输入的命令一块使用
# =================================================================
# 重定向操作符从 “<<” 改为 “<<-”，shell 会忽略在此 here document 中开头的 tab 字符。
# 这就能缩进一个 here document，从而提高脚本的可读性
cat >> a.txt <<- _EOF_
    user anonymous me@linuxbox
    hello world
    hash
    bye
_EOF_

