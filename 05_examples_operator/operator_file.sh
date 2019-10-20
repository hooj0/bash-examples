#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-29 21:09:07
# @copyright by hoojo@2018
# @changelog Added bash `operator -> file` example


#------------------------------------------------------------------------------------------------------------
#					文件测试运算符
#------------------------------------------------------------------------------------------------------------
# 文件测试运算符用于检测 Unix 文件的各种属性。
#------------------------------------------------------------------------------------------------------------
#
# 操作符			说明																		举例
#------------------------------------------------------------------------------------------------------------
# -b file	检测文件是否是块设备文件，如果是，则返回 true。								[ -b $file ] 返回 false。
# -c file	检测文件是否是字符设备文件，如果是，则返回 true。							[ -c $file ] 返回 false。
# -d file	检测文件是否是目录，如果是，则返回 true。									[ -d $file ] 返回 false。
# -f file	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。	[ -f $file ] 返回 true。

# -g file	检测文件是否设置了 SGID 位，如果是，则返回 true。							[ -g $file ] 返回 false。
# -k file	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。					[ -k $file ] 返回 false。
# -p file	检测文件是否是有名管道，如果是，则返回 true。								[ -p $file ] 返回 false。
# -u file	检测文件是否设置了 SUID 位，如果是，则返回 true。							[ -u $file ] 返回 false。

# -r file	检测文件是否可读，如果是，则返回 true。									[ -r $file ] 返回 true。
# -w file	检测文件是否可写，如果是，则返回 true。									[ -w $file ] 返回 true。
# -x file	检测文件是否可执行，如果是，则返回 true。									[ -x $file ] 返回 true。
# -s file	检测文件是否为空（文件大小是否大于0），不为空返回 true。					[ -s $file ] 返回 true。
# -e file	检测文件（包括目录）是否存在，如果是，则返回 true。							[ -e $file ] 返回 true。
#------------------------------------------------------------------------------------------------------------
# file1 -nt file2     # file1 比 file2 更新
# file1 -ot file2     # file1 比 file2 更老
#----------------------------------------------------------------------
# 测试文件表达式
# ==============================================================================
# 表达式   	        如果下列条件为真则返回True
# ------------------------------------------------------------------------------
# file1 -ef file2 	file1 和 file2 拥有相同的索引号（通过硬链接两个文件名指向相同的文件）。
# file1 -nt file2 	file1新于 file2。
# file1 -ot file2 	file1早于 file2。
# -b file 	        file 存在并且是一个块（设备）文件。
# -c file 	        file 存在并且是一个字符（设备）文件。
# -d file 	        file 存在并且是一个目录。
# -e file 	        file 存在。
# -f file 	        file 存在并且是一个普通文件。
# -g file 	        file 存在并且设置了组 ID。
# -G file 	        file 存在并且由有效组 ID 拥有。
# -k file 	        file 存在并且设置了它的“sticky bit”。
# -L file 	        file 存在并且是一个符号链接。
# -O file 	        file 存在并且由有效用户 ID 拥有。
# -p file 	        file 存在并且是一个命名管道。
# -r file 	        file 存在并且可读（有效用户有可读权限）。
# -s file 	        file 存在且其长度大于零。
# -S file 	        file 存在且是一个网络 socket。
# -t fd 	        fd 是一个定向到终端／从终端定向的文件描述符 。 这可以被用来决定是否重定向了标准输入／输出错误。
# -u file 	        file 存在并且设置了 setuid 位。
# -w file 	        file 存在并且可写（有效用户拥有可写权限）。
# -x file 	        file 存在并且可执行（有效用户有执行／搜索权限）。
# ------------------------------------------------------------------------------


#----------------------------------------------------------------------
# 实例
#----------------------------------------------------------------------
# 变量 file 表示文件"./operator_file.sh"，它的大小为100字节，具有 rwx 权限。下面的代码，将检测该文件的各种属性：
#----------------------------------------------------------------------
file="./operator_file.sh"


if [ -r $file ]; then
   echo "文件可读"
else
   echo "文件不可读"
fi


if [ -w $file ]; then
   echo "文件可写"
else
   echo "文件不可写"
fi


if [ -x $file ]; then
   echo "文件可执行"
else
   echo "文件不可执行"
fi


if [ -f $file ]; then
   echo "文件为普通文件"
else
   echo "文件为特殊文件"
fi


if [ -d $file ]; then
   echo "文件是个目录"
else
   echo "文件不是个目录"
fi


if [ -s $file ]; then
   echo "文件不为空"
else
   echo "文件为空"
fi


if [ -e $file ]; then
   echo "文件存在"
else
   echo "文件不存在"
fi

# file1 -nt file2     # file1 比 file2 更新
# file1 -ot file2     # file1 比 file2 更老
file1="./operator_boolean.sh"
file2="./operator_file.sh"
if [ $file1 -nt $file2 ]; then
	echo "file1 比 file2 更新"
fi

if [ $file1 -ot $file2 ]; then
	echo "file1 比 file2 更老"
fi	


# 执行脚本，输出结果如下所示：
#----------------------------------------------------------------------

# 文件可读
# 文件可写
# 文件可执行
# 文件为普通文件
# 文件不是个目录
# 文件不为空
# 文件存在



# =================================================================
# 示例：实例演示判断文件
# =================================================================
FILE=~/.bashrc
if [ -e "$FILE" ]; then
    if [ -f "$FILE" ]; then
        echo "$FILE is a regular file."
    fi
    if [ -d "$FILE" ]; then
        echo "$FILE is a directory."
    fi
    if [ -r "$FILE" ]; then
        echo "$FILE is readable."
    fi
    if [ -w "$FILE" ]; then
        echo "$FILE is writable."
    fi
    if [ -x "$FILE" ]; then
        echo "$FILE is executable/searchable."
    fi
else
    echo "$FILE does not exist"
    exit 1
fi
exit