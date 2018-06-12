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













read key