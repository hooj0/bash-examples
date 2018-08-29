#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-07 21:16:39
# @copyright by hoojo@2018
# @changelog Added python3 `file->file stdin` example

# ======================================================================
#					Shell 输入/输出重定向————输入重定向
# ======================================================================
# 和输出重定向一样，Unix 命令也可以从文件获取输入，语法为：
# command1 < file1
# 
# 这样，本来需要从键盘获取输入的命令会转移到文件读取内容。
#
# 注意：输出重定向是大于号(>)，输入重定向是小于号(<)。
# ----------------------------------------------------------------------




# 	实例
# ----------------------------------------------------------------------
# 接着以上实例，我们需要统计 users 文件的行数，执行以下命令：
$ wc -l users
# 2 users

# 也可以将输入重定向到 users 文件：
$  wc -l < users
# 2 

# 注意：上面两个例子的结果不同：
#	第一个例子，会输出文件名；
#	第二个不会，因为它仅仅知道从标准输入读取内容。
# ----------------------------------------------------------------------



# command1 < infile > outfile
# 同时替换输入和输出，执行command1，从文件infile读取内容，然后将输出写入到outfile中。
# ----------------------------------------------------------------------
$ wc -l < users > stats
# tips：wc -l 统计 users内容行数，把结果写入到文件stats




# ----------------------------------------------------------------------
# 如果希望 stderr 重定向到 file，可以这样写：
# $ command 2 > file

#如果希望 stderr 追加到 file 文件末尾，可以这样写：
# $ command 2 >> file

#2 表示标准错误文件(stderr)。

# 如果希望将 stdout 和 stderr 合并后重定向到 file，可以这样写：
$ command > file 2>&1

# 或者
$ command >> file 2>&1


# 如果希望对 stdin 和 stdout 都重定向，可以这样写：
$ command < file1 >file2
# command 命令将 stdin 重定向到 file1，将 stdout 重定向到 file2。
# ----------------------------------------------------------------------
# ----------------------------------------------------------------------






# ----------------------------------------------------------------------
#		扩展阅读
# ----------------------------------------------------------------------
$ command > file 2>&1
$ command >> file 2>&1
# ----------------------------------------------------------------------
# 这里的&没有固定的意思
# 放在>后面的&，表示重定向的目标不是一个文件，而是一个文件描述符，

# 内置的文件描述符如下：
# -----------------------------
# 1 => stdout
# 2 => stderr
# 0 => stdin
# -----------------------------

# 换言之 2>1 代表将stderr重定向到当前路径下文件名为1的regular file中，
#     而2>&1代表将stderr重定向到文件描述符为1的文件(即/dev/stdout)中，
# 	    这个文件就是stdout在file system中的映射
# -----------------------------

# 而&>file是一种特殊的用法，也可以写成>&file，二者的意思完全相同，都等价于>file 2>&1
# 此处&>或者>&视作整体，分开没有单独的含义
# ----------------------------------------------------------------------


# 顺序问题：
# ----------------------------------------------------------------------
find /etc -name .bashrc > list 2>&1
# 我想问为什么不能调下顺序,比如这样
find /etc -name .bashrc 2>&1 > list

# 这个是从左到右有顺序的
# -----------------------------
# 第一种
xxx > list 2>&1
# 先将要输出到stdout的内容重定向到文件，此时文件list就是这个程序的stdout，再将stderr重定向到stdout，也就是文件list


# 第二种
xxx 2>&1 > list

# 先将要输出到stderr的内容重定向到stdout，此时会产生一个stdout的拷贝，作为程序的stderr，
# 而程序原本要输出到stdout的内容，依然是对接在stdout原身上的，
# 因此第二步重定向stdout，对stdout的拷贝不产生任何影响