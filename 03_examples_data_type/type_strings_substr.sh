#!/bin/bash

#==============================================================
# Linux 的字符串截取八种方法
#==============================================================

# -------------------------------------------------------------
# 	#、## 表示从左边开始删除。
# -------------------------------------------------------------
# 	一个 # 表示从左边删除到第一个指定的字符；
#	两个 # 表示从左边删除到最后一个指定的字符。

# -------------------------------------------------------------
# 	%、%% 表示从右边开始删除。
# -------------------------------------------------------------
#	一个 % 表示从右边删除到第一个指定的字符；
#	两个 % 表示从左边删除到最后一个指定的字符。

# 删除包括了指定的字符本身。
# -------------------------------------------------------------

# 假设有变量
var=http://www.aaa.com/123.htm



# 1. # 号截取，删除左边字符(第一个字符开始)，保留右边字符。
# ==============================================================
# 其中 var 是变量名，# 号是运算符，*// 表示从左边开始删除第一个 // 号及左边的所有字符

echo ${var#*//} # 结果是 ：www.aaa.com/123.htm



# 2. ## 号截取，删除左边字符（最后一个字符开始），保留右边字符。
# ==============================================================
# #*/ 表示从左边开始删除最后（最右边）一个 / 号及左边的所有字符

echo ${var##*/} # 结果是 123.htm




# 3. %号截取，删除右边字符，保留左边字符
# ==============================================================
# %/* 表示从右边开始，删除第一个 / 号及右边的字符

echo ${var%/*} # 结果是：http://www.aaa.com



# 4. %% 号截取，删除右边字符，保留左边字符
# ==============================================================
# %%/* 表示从右边开始，删除最后（最左边）一个 / 号及右边的字符

echo ${var%%/*} # 结果是：http:



# 5. 从左边第几个字符开始，及字符的个数
# ==============================================================
# 其中的 0 表示左边第一个字符开始，5 表示字符的总个数。

echo ${var:0:5} # 结果是：http:



# 6. 从左边第几个字符开始，一直到结束。
# ==============================================================
# 其中的 7 表示左边第8个字符开始，一直到结束。

echo ${var:7} # 结果是 ：www.aaa.com/123.htm



# 7. 从右边第几个字符开始，及字符的个数
# ==============================================================
# 其中的 0-7 表示右边算起第七个字符开始，3 表示字符的个数。

echo ${var:0-7:3} # 结果是：123



# 8. 从右边第几个字符开始，一直到结束。
# ==============================================================
# 表示从右边第七个字符开始，一直到结束。
# 注：（左边的第一个字符是用 0 表示，右边的第一个字符用 0-1 表示）

echo ${var:0-7} # 结果是：123.htm
echo


# ==============================================================
# 				实例演示
# ==============================================================

var="http://www.hoojo.com/linux/linux-shell-variable.html"

s1=${var%%i*}
s2=${var%i*}
s3=${var%%.*}
s4=${var#*/}
s5=${var##*/} 

echo "原字符串为："${var} 
echo "%%i*的效果："${s1} 
echo "%i*的效果："${s2} 
echo "%%.*的效果："${s3} 
echo "#*/的效果："${s4} 
echo "##*/的效果："${s5}


# 运行结果：
#--------------------------------------------------------------------
# 原字符串为：http://www.hoojo.com/linux/linux-shell-variable.html
# %%t*的效果：h
# %t*的效果：http://www.hoojo.com/linux/linux-shell-variable.h
# %%.*的效果：http://www
# #*/的效果：/www.hoojo.com/linux/linux-shell-variable.html
# ##*/的效果：linux-shell-variable.html




# -------------------------------------------------------------------

${variable/pattern/string}  # 把变量值中匹配 pattern 的最长的部分替换为 string，只替换第一个匹配的部分
${variable//pattern/string} # 把变量值中匹配 pattern 的最长的部分替换为 string，全局进行替换
