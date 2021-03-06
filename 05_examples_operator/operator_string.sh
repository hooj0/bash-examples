#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-29 21:09:31
# @copyright by hoojo@2018
# @changelog Added bash `operator -> string` example



# =================================================================================
#       字符串运算符
# =================================================================================
# 下表列出了常用的字符串运算符，假定变量 a 为 "abc"，变量 b 为 "efg"：
# ---------------------------------------------------------------------------------
# 运算符				说明										举例
# ---------------------------------------------------------------------------------
# =			检测两个字符串是否相等，相等返回 true。		    [ $a = $b ] 返回 false
# !=		检测两个字符串是否相等，不相等返回 true。		    [ $a != $b ] 返回 true
# -z		检测字符串长度是否为0，为0返回 true。			[ -z $a ] 返回 false
# -n		检测字符串长度是否不为0，不为0返回 true。		[ -n $a ] 返回 true
# str		检测字符串是否为空，不为空返回 true。			[ $a ] 返回 true
# ---------------------------------------------------------------------------------
#    测试字符串表达式
# =================================================================================
# 表达式   	            如果下列条件为真则返回True
# ---------------------------------------------------------------------------------
# string 	                string 不为 null
# -n string 	            字符串 string 的长度大于零
# -z string 	            字符串 string 的长度为零
# string1 = string2
# string1 == string2        string1 和 string2 相同， 单或双等号都可以，不过双等号更受欢迎
# string1 != string2 	    string1 和 string2 不相同
# string1 > string2 	    sting1 排列在 string2 之后
# string1 < string2 	    string1 排列在 string2 之前
# ---------------------------------------------------------------------------------




# =================================================================================
# 实例：字符串运算符实例
# =================================================================================
a="abc"
b="efg"

if [ $a = $b ]; then
   echo "$a = $b : a 等于 b"
else
   echo "$a = $b: a 不等于 b"
fi

if [ $a != $b ]; then
   echo "$a != $b : a 不等于 b"
else
   echo "$a != $b: a 等于 b"
fi

if [ -z $a ]; then
   echo "-z $a : 字符串长度为 0"
else
   echo "-z $a : 字符串长度不为 0"
fi

if [ -n $a ]; then
   echo "-n $a : 字符串长度不为 0"
else
   echo "-n $a : 字符串长度为 0"
fi

if [ $a ]; then
   echo "$a : 字符串不为空"
else
   echo "$a : 字符串为空"
fi



# output:
# ---------------------------------------------------------------------------------
# abc = efg: a 不等于 b
# abc != efg : a 不等于 b
# -z abc : 字符串长度不为 0
# -n abc : 字符串长度不为 0
# abc : 字符串不为空



# =================================================================================
# 示例：字符串比较示例
# =================================================================================
ANSWER=maybe
if [ -z "$ANSWER" ]; then
    echo "There is no answer." >&2
    exit 1
fi
if [ "$ANSWER" = "yes" ]; then
    echo "The answer is YES."
elif [ "$ANSWER" = "no" ]; then
    echo "The answer is NO."
elif [ "$ANSWER" = "maybe" ]; then
    echo "The answer is MAYBE."
else
    echo "The answer is UNKNOWN."
fi



# =================================================================================
# 示例：[[ ]]命令非常 相似于 test 命令（它支持所有的表达式），
# 但是增加了一个重要的新的字符串表达式：string1 =~ regex
# =================================================================================
INT=-5
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
    if [ $INT -eq 0 ]; then
        echo "INT is zero."
    else
        if [ $INT -lt 0 ]; then
            echo "INT is negative."
        else
            echo "INT is positive."
        fi
        if [ $((INT % 2)) -eq 0 ]; then
            echo "INT is even."
        else
            echo "INT is odd."
        fi
    fi
else
    echo "INT is not an integer." >&2
    exit 1
fi


# =================================================================================
# 示例：[[ ]]添加的另一个功能是==操作符支持类型匹配，正如路径名展开所做的那样
# =================================================================================
FILE=foo.bar
if [[ $FILE == foo.* ]]; then
    echo "$FILE matches pattern 'foo.*'"
fi