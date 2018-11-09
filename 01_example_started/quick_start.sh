#!/bin/bash
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-11-09
# copyright by hoojo@2018
# @changelog Added Bash `example started -> quick start` example



# =================================================================
#       怎样编写一个 Shell 脚本
# =================================================================
# 1、编写一个脚本。
# 2、使脚本文件可执行：需要设置脚本文件的权限来允许其可执行。
# 3、把脚本放置到 shell 能够找到的地方：当没有指定可执行文件明确的路径名时，
#       shell 会自动地搜索某些目录，来查找此可执行文件。
#       为了最大程度的方便，我们会把脚本放到这些目录当中。
# -----------------------------------------------------------------




# =================================================================
# 示例：hello world 示例
#------------------------------------------------------------------
# #!字符序列是一种特殊的结构叫做 shebang
# # 符号之后的所有字符都会被忽略
# =================================================================
##!/bin/bash
# This is our first script.
echo 'Hello World!'

# output:
#------------------------------------------------------------------
#


# =================================================================
# 示例：让我们的脚本可执行，使用 chmod 命令
# =================================================================
# 查看权限
ls -l quick_start.sh

# 授权可以执行
chmod 755 quick_start.sh

# output:
#-------------------------------------------------------------------
# -rwxr-xr-x 1 root 197121 841 Nov  4 12:54 quick_start.sh



# =================================================================
# 示例：脚本文件位置
# =================================================================
# 当设置了脚本权限之后，就能执行我们的脚本
./quick_start.sh

# 为了能够运行此脚本，必须指定脚本文件明确的路径。如果没有那样做，会得到这样的提示：
#[me@linuxbox ~]$ quick_start.sh
#bash: quick_start.sh: command not found

# 为什么会这样呢？
# 脚本没有问题。是脚本存储位置的问题。PATH 环境变量及其在系统 查找可执行程序方面的作用。
# 系统每次都会 搜索一系列的目录，来查找此可执行程序。
# 目录列表被存储在一个名为 PATH 的环境变量中。这个 PATH 变量包含一个由冒号分隔开的目录列表。
#
# 可以查看 PATH 的内容：
echo $PATH

#/home/me/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games



# 看到了我们的目录列表。如果脚本位于此列表中任意目录下，那么我们的问题将 会被解决。
# 注意列表中的第一个目录/home/me/bin。大多数的 Linux 发行版会配置 PATH 变量，
# 让其包含 一个位于用户家目录下的 bin 目录，从而允许用户能够执行他们自己的程序。
# 所以如果我们创建了 一个 bin 目录，并把脚本放在这个目录下，
# 那么这个脚本就应该像其它程序一样开始工作了：
cd ~
mkdir bin
mv quick_start.sh bin
quick_start.sh



# =================================================================
# 示例：配置环境变量
#------------------------------------------------------------------
# 如果这个 PATH 变量不包含这个目录，我们能够轻松地添加它，
# 通过在我们的.bashrc 文件中配置变量
# =================================================================
# 通过在.bashrc 文件中包含下面这一行文本：
export PATH=~/bin:"$PATH"

# 为了把这个修改应用到当前的终端会话中，
# 必须让 shell 重新读取这个 .bashrc 文件。
. .bashrc

# 点（.）命令是 source 命令的同义词，一个 shell 内建命令，
# 用来读取一个指定的 shell 命令文件， 并把它看作是从键盘中输入的一样。
source .bashrc



# =================================================================
# 示例：脚本文件放置的最佳位置
# =================================================================
# ~/bin 目录是存放为个人所用脚本的好地方。
# 如果编写了一个脚本，系统中的每个用户都可以使用它，
# 那么这个脚本的传统位置是 /usr/local/bin。
# 系统管理员使用的脚本经常放到 /usr/local/sbin 目录下。

# 大多数情况下，本地支持的软件，不管是脚本还是编译过的程序，
# 都应该放到 /usr/local 目录下， 而不是在 /bin 或 /usr/bin 目录下。
# 这些目录都是由 Linux 文件系统层次结构标准指定，只包含由 Linux 发行商 所提供和维护的文件。



# =================================================================
# 示例：脚本的格式技巧和规范
#------------------------------------------------------------------
# 推荐使用：
#   短选项名称，虽然可读性不好，但易于编写维护，出错可能性小
#   缩进和行继续符：当使用长命令的时候，通过把命令在几个文本行中展开，可以提高命令的可读性
# =================================================================
# 许多命令都以长短两种选项名称为特征。
# 例如，ls 命令有许多选项既可以用短形式也 可以用长形式来表示。
ls -ad

# 短选项更受欢迎，但是当书写脚本的时候， 长选项能提供可读性。
ls --all --directory

# 把命令在几个文本行中展开，可以提高命令的可读性
find playground \( -type f -not -perm 0600 -exec
chmod 0600 ‘{}’ ‘;’ \) -or \( -type d -not -perm 0711 -exec chmod
0711 ‘{}’ ‘;’ \)


# 这个命令有点儿难理解，当第一眼看到它的时候。经过排版后这个命令可能会比较容易理解，如果这样书写它：
# 通过使用行继续符（反斜杠-回车符序列）和缩进
find playground \
    \( \
        -type f \
        -not -perm 0600 \
        -exec chmod 0600 ‘{}’ ‘;’ \
    \) \
    -or \
    \( \
        -type d \
        -not -perm 0711 \
        -exec chmod 0711 ‘{}’ ‘;’ \
    \)