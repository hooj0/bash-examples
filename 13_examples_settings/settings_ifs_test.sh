#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-07-01 15:48:10
# @copyright by hoojo@2018
# @changelog Added bash `settings -> ifs test` example



# =================================================================
# 示例：如果将此调用为
#	sh ifs_test.sh notes todo-list 'My Resume.doc'，
# 	然后使用默认的IFS值，则第三个参数将被错误解析为两个单独的文件名为“My”和“Resume.doc”。
#	当实际上它是一个文件，它有一个空间，名为“我的Resume.doc”。
# -------------------------------------------------------------------------------
# 	将IFS设置为$'\n\t'意味着单词拆分只会发生在换行符和制表符中。
# 	IFS=$'\n\t'
# =================================================================
IFS=$'\n\t'
for arg in $@; do
    echo "doing something with file: $arg"
done

# output:
# -------------------------------------------------------------------------------
# $ ./ifs_test.sh notes todo-list 'My Resume.doc'
# doing something with file: notes
# doing something with file: todo-list
# doing something with file: My
# doing something with file: Resume.doc


# IFS=$'\n\t'
# output:
# -------------------------------------------------------------------------------
# $ ./ifs_test.sh notes todo-list 'My Resume.doc'
# doing something with file: notes
# doing something with file: todo-list
# doing something with file: My Resume.doc

