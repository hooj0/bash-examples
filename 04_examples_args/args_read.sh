#!/bin/bash

#==============================================================
#			read 命令用于获取键盘输入信息
#==============================================================


# -------------------------------------------------------------
# 它的语法形式一般是：
# 		read [-options] [variable...]
#		read: 用法: read [-ers] [-a 数组] [-d 分隔符] [-i 缓冲区文字] [-n 读取字符数] [-N 读取字符数] [-p 提示符] [-t 超时] [-u 文件描述符] [名称 ...]
# -------------------------------------------------------------

# 以下实例读取键盘输入的内容并将其赋值给shell变量，为：-p 参数由于设置提示信息：

read -p "input a val:" a    # 获取键盘输入的 a 变量数字
read -p "input b val:" b    # 获取键盘输入的 b 变量数字
r=$[a+b]                    # 计算a+b的结果 赋值给r  不能有空格
echo "result = ${r}"        # 输出显示结果 r
echo `expr $a + $b`


# 测试结果：
# -------------------------------------------------------------

# input a val:1
# input b val:2
# result = 3



# ------------------------------------------------------------------------------------
# read 命令一个一个词组地接收输入的参数，每个词组需要使用空格进行分隔；
#	如果输入的词组个数大于需要的参数个数，则多出的词组将被作为整体为最后一个参数接收。
# ------------------------------------------------------------------------------------

# 测试文件 test.sh 代码如下：
# ------------------------------------------------------------------------------------

read firstStr secondStr
echo "第一个参数:$firstStr; 第二个参数:$secondStr"

# 执行测试：
# ------------------------------------------------------------------------------------

# $ sh test.sh 
# 一 二 三 四
# 第一个参数:一; 第二个参数:二 三 四


# 实例, 文件 test.sh:
# ------------------------------------------------------------------------------------

read -p "请输入一段文字:" -n 6 -t 5 -s password
echo "\npassword is $password" 

# read 参数说明：
# -------------------------------------------
# -p 输入提示文字
# -n 输入字符长度限制(达到6位，自动结束)
# -t 输入限时
# -s 隐藏输入内容
# -------------------------------------------
 
# $ sh test.sh 
# 请输入一段文字:
# password is asdfgh