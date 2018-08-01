#!/bin/bash

# ======================================================================
#					变量赋值操作
# ======================================================================

a=1
b=2

r=`expr $a + $b`
echo "result: $r"

r=`expr $a + $b + $r`
echo "result: $r"

r=$[a+b]
echo "result: $r"

let "r=a+b+a"
echo "result: $r"

:${d:= 10} # var:= 不能有空格
echo "result-d: $d"

# 变量运算赋值
# ------------------------------------------------------------------
# bash 里面可以用 (( )) 执行 C 风格的算术表达式
# ------------------------------------------------------------------

var=0
(( var += 1 )) # 这是一种，现在 var 是 1
echo "var: $var"

(( var++ ))    # 这也是一种自增，2
echo "var: $var"

(( var = var * var )) # 怎么来乘法了！var 现在是 4。
echo "var: $var"


let 'var = var / 3'   # 还是只有 bash 才能用的拓展。除法是整数除法，向 0 舍入，1。
echo "var: $var"


# $(( )) 会展开成为这个 C 表达式求值的结果。以前 bash 有个 $[ ] 一样，但是别去用。
var=$((var += 2))    # echo 出 3，var 现在是 3。
echo "var: $var"


var=$((var-1))        # 展开成 var=2，var 现在是……还用说吗，2。
echo "var: $var"



# ------------------------------------------------------------------
# 变量参数默认值
# ------------------------------------------------------------------
#${name:?参数不存在}
#echo "${name:-haha}"


# 当文件执行参数不为1个时，提示
#input_file=${1:?用法: $0 args}
#echo "$input_file"


# 当文件参数有2个时
#output_file=${2:-logfile}
#echo "$output_file"



#变量$foo尚未设置。在严格模式下，下一行触发错误。
bar=$foo

# ${VARNAME:-DEFAULT_VALUE} 如果 VARNAME 未定义，则使用 DEFAULT_VALUE 作为默认值.
# So here, $bar is set to "alpha":
bar=${foo:-alpha}

# 现在我们明确地设置foo：
foo="beta"

# 忽略默认值. $bar = "beta":
bar=${foo:-alpha}

# 要使默认值为空字符串，请使用 ${VARNAME:-}
empty_string=${some_undefined_var:-}

read exits
















read key