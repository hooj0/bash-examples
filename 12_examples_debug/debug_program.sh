#!/bin/bash
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-11-19
# copyright by hoojo@2018
# @changelog Added bash `debug -> program` example



# =================================================================
#       shell bash 编程 —— 错误避免/错误排解
# =================================================================
# 1、开启语法高亮，:syntax on
# 2、丢失或意外的标记
# 3、丢失引号/括号
# -----------------------------------------------------------------




# =================================================================
# 示例：if 判断 变量为空出错
# =================================================================
number=
if [ $number = 1 ]; then
    echo "Number is equal to 1."
else
    echo "Number is not equal to 1."
fi

#------------------------------------------------------------------
# 解决方案: 将变量用 引号字符串表示
#------------------------------------------------------------------
if [ "$number" = 1 ]; then
    echo "Number is equal to 1."
else
    echo "Number is not equal to 1."
fi


# =================================================================
# 示例：删除文件出错，当进入的目录不存在或变量错误，将删除当前目录文件夹所以文件
# =================================================================
cd $dir_name
rm *



# 解决方案:
#-------------------------------------------------------------------
# cd 命令运行失败后，rm 命令将不会执行
cd $dir_name && rm *

# 可能未设置变量 dir_name 或其变量值为空
[[ -d $dir_name ]] && cd $dir_name && rm *


# 更友好的方式：
#-------------------------------------------------------------------
if [[ -d $dir_name ]]; then
    if cd $dir_name; then
        rm *
    else
        echo "cannot cd to '$dir_name'" >&2
        exit 1
    fi
else
    echo "no such directory: '$dir_name'" >&2
    exit 1
fi



# =================================================================
# 示例：验证输入，程序必须能够应对它所接受的任意数据
# =================================================================
# 只有当用户输入是一个位于 0 到 3 范围内（包括 0 和 3）的数字的时候， 这条语句才返回一个 0 退出状态
# read REPLY
[[ $REPLY =~ ^[0-3]$ ]]



# =================================================================
# 示例：加入错误日志，追踪错误位置
# =================================================================
echo "preparing to delete files" >&2
if [[ -d $dir_name ]]; then
    if cd $dir_name; then
        echo "deleting files" >&2
        rm *
    else
        echo "cannot cd to '$dir_name'" >&2
        exit 1
    fi
else
    echo "no such directory: '$dir_name'" >&2
    exit 1
fi
echo "file deletion complete" >&2



# =================================================================
# 示例：通过 -x 选项和 set 命令加上 -x 选项两种途径实现追踪
# =================================================================
cat trouble.sh

##!/bin/bash -x

number=1
if [ $number = 1 ]; then
    echo "Number is equal to 1."
else
    echo "Number is not equal to 1."
fi

# 在 PS4（提示符4）shell 变量中，让其包含脚本中追踪执行到的当前行的行号
#------------------------------------------------------------------
export PS4='$LINENO + '


# 追踪部分代码片段
#------------------------------------------------------------------
number=1
set -x # Turn on tracing
if [ $number = 1 ]; then
    echo "Number is equal to 1."
else
    echo "Number is not equal to 1."
fi
set +x # Turn off tracing