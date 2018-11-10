#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-07 20:53:50
# @copyright by hoojo@2018
# @changelog Added bash `file->file stdout` example

# ======================================================================
#			Shell 输入/输出重定向————输出重定向
# ======================================================================
# 大多数 UNIX 系统命令从你的终端接受输入并将所产生的“输出”发送回​​到您的终端。
# 一个命令通常从一个叫标准输入的地方读取输入，默认情况下，这恰好是你的终端。
# 同样，一个命令通常将其输出写入到标准输出，默认情况下，这也是你的终端。
# ----------------------------------------------------------------------

# 重定向命令列表如下：
# ----------------------------------------------------------------------

# 命令					说明
# ----------------------------------------------------------------------
# command > file	将输出重定向到 file。
# command < file	将输入重定向到 file。
# command >> file	将输出以追加的方式重定向到 file。
# n > file			将文件描述符为 n 的文件重定向到 file。
# n >> file			将文件描述符为 n 的文件以追加的方式重定向到 file。
# n >& m			将输出文件 m 和 n 合并。
# n <& m			将输入文件 m 和 n 合并。
# << tag			将开始标记 tag 和结束标记 tag 之间的内容作为输入。
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# 需要注意的是文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。
# ----------------------------------------------------------------------
# 重定向深入讲解
# ----------------------------------------------------------------------
# 一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：

# 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
# 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
# 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。
# 默认情况下，command > file 将 stdout 重定向到 file，command < file 将stdin 重定向到 file。
# ----------------------------------------------------------------------




# 					输出重定向
# ----------------------------------------------------------------------
# 重定向一般通过在命令间插入特定的符号来实现。特别的，这些符号的语法如下所示:

# command1 > file1
# 上面这个命令执行command1然后将输出的内容存入file1。

# 注意：任何file1内的已经存在的内容将被新内容替代。如果要将新内容添加在文件末尾，请使用>>操作符。
# ----------------------------------------------------------------------



# 实例
# ----------------------------------------------------------------------
# 执行下面的 who 命令，它将命令的完整的输出重定向在用户文件中(users):

$ who > users

# 执行后，并没有在终端输出信息，这是因为输出已被从默认的标准输出设备（终端）重定向到指定的文件。


# 你可以使用 cat 命令查看文件内容：

$ cat users
_mbsetupuser console  Oct 31 17:35 
tianqixin    console  Oct 31 17:35 
tianqixin    ttys000  Dec  1 11:33 

# ----------------------------------------------------------------------
# 输出重定向会覆盖文件内容，请看下面的例子：

$ echo "Halloween" > users

$ cat users
# Halloween

# 如果不希望文件内容被覆盖，可以使用 >> 追加到文件末尾，例如：

$ echo "hallo world！" >> users
$ cat users
# Halloween
# hallo world！
