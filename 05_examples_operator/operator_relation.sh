#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-29 21:07:13
# @copyright by hoojo@2018
# @changelog Added bash `operator->operator relation` example

#-----------------------------------------------------------------------
#			关系运算符
#-----------------------------------------------------------------------
# 关系运算符只支持数字，不支持字符串，除非字符串的值是数字。
#-----------------------------------------------------------------------

# 下表列出了常用的关系运算符，假定变量 a 为 10，变量 b 为 20：
#-----------------------------------------------------------------------
# 运算符		说明														举例
#-----------------------------------------------------------------------
# -eq		检测两个数是否相等，相等返回 true。					[ $a -eq $b ] 返回 false。
# -ne		检测两个数是否不相等，不相等返回 true。				[ $a -ne $b ] 返回 true。
# -gt		检测左边的数是否大于右边的，如果是，则返回 true。		[ $a -gt $b ] 返回 false。
# -lt		检测左边的数是否小于右边的，如果是，则返回 true。		[ $a -lt $b ] 返回 true。
# -ge		检测左边的数是否大于等于右边的，如果是，则返回 true。	[ $a -ge $b ] 返回 false。
# -le		检测左边的数是否小于等于右边的，如果是，则返回 true。	[ $a -le $b ] 返回 true。
#-----------------------------------------------------------------------
# EQ 就是 EQUAL等于
# NE 就是 NOT EQUAL不等于 
# GT 就是 GREATER THAN大于　 
# LT 就是 LESS THAN小于 
# GE 就是 GREATER THAN OR EQUAL 大于等于 
# LE 就是 LESS THAN OR EQUAL 小于等于
#-----------------------------------------------------------------------
# 1、进行数值比较时，可以使用 [ expression1 OP expression2 ]，OP 可以为 -gt、-lt、-ge、-le、-eq、-ne 
#	也可以使用 ((expression1 OP expression2))，OP 可以为 >、<、>=、<=、==、!=。
#	这几个关系运算符都是测试整数表达式 expression1 和 expression2 之间的大小关系。

# 2、 >、<、==、!= 也可以进行字符串比较。
# 3、进行字符串比较时，== 可以使用 = 替代。
# 4、 == 和 !=进行字符串比较时，可以使用 [ string1 OP string2 ] 或者 [[ string1 OP string2 ]] 的形式。
# 5、 > 和 < 进行字符串比较时，需要使用[[ string1 OP string2 ]] 或者 [ string1 \OP string2 ]。也就是使用 [] 时，> 和 < 需要使用反斜线转义。
#-----------------------------------------------------------------------



#-----------------------------------------------------------------------
# 实例
#-----------------------------------------------------------------------
# 关系运算符实例如下：
#-----------------------------------------------------------------------

a=10
b=20

if (($a == $b)); then
	echo "$a == $b: a = b"
else
	echo "$a != $b: a != b"
fi		

if (($a != $b)); then
   echo "$a != $b: a 不等于 b"
else
   echo "$a = $b : a 等于 b"
fi

if (($a > $b)); then
   echo "$a > $b: a 大于 b"
else
   echo "$a <= $b: a 不大于 b"
fi

if (($a < $b)); then
   echo "$a < $b: a 小于 b"
else
   echo "$a >= $b: a 不小于 b"
fi

if (($a >= $b)); then
   echo "$a >= $b: a 大于或等于 b"
else
   echo "$a < $b: a 小于 b"
fi

if (($a <= $b)); then
   echo "$a <= $b: a 小于或等于 b"
else
   echo "$a > $b: a 大于 b"
fi

echo
#-----------------------------------------------------------------------

if [ $a -eq $b ]; then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi

if [ $a -ne $b ]; then
   echo "$a -ne $b: a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi

if [ $a -gt $b ]; then
   echo "$a -gt $b: a 大于 b"
else
   echo "$a -gt $b: a 不大于 b"
fi

if [ $a -lt $b ]; then
   echo "$a -lt $b: a 小于 b"
else
   echo "$a -lt $b: a 不小于 b"
fi

if [ $a -ge $b ]; then
   echo "$a -ge $b: a 大于或等于 b"
else
   echo "$a -ge $b: a 小于 b"
fi

if [ $a -le $b ]; then
   echo "$a -le $b: a 小于或等于 b"
else
   echo "$a -le $b: a 大于 b"
fi


#-----------------------------------------------------------------------
# 执行脚本，输出结果如下所示：
#-----------------------------------------------------------------------

# 10 -eq 20: a 不等于 b
# 10 -ne 20: a 不等于 b
# 10 -gt 20: a 不大于 b
# 10 -lt 20: a 小于 b
# 10 -ge 20: a 小于 b
# 10 -le 20: a 小于或等于 b