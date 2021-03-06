#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-06 21:32:35
# @copyright by hoojo@2018
# @changelog Added bash `function -> overview` example



# ============================================================================
#       shell 函数 ———— function
# ============================================================================
# linux shell 可以用户定义函数，然后在shell脚本中可以随便调用。
# ----------------------------------------------------------------------------
# shell中函数的定义格式如下：
#
# [ function ] funname [()]
# {
#    action;
#    [return int;]
# }
# ----------------------------------------------------------------------------
# 说明：
# 1、可以带function fun() 定义，也可以直接fun() 定义,不带任何参数
# 2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值
#    return后跟数值n(0-255)
# ----------------------------------------------------------------------------


# ============================================================================
# 示例：下面的例子定义了一个函数并进行调用
# ============================================================================
demoFun(){
    echo "这是我的第一个 shell 函数!"
}

echo "-----函数开始执行-----"
demoFun
echo "-----函数执行完毕-----"

# output：
# ----------------------------------------------------------------------------
# -----函数开始执行-----
# 这是我的第一个 shell 函数!
# -----函数执行完毕-----



# ============================================================================
# 示例：下面定义一个带有return语句的函数
# ============================================================================

funWithReturn(){
    echo "这个函数会对输入的两个数字进行相加运算..."
    echo "输入第一个数字: "
    read aNum
    echo "输入第二个数字: "
    read anotherNum
    echo "两个数字分别为 $aNum 和 $anotherNum !"
    return $(($aNum+$anotherNum))
}


funWithReturn
echo "输入的两个数字之和为 $? !"



# ============================================================================
# 示例：下面定义一个带有字符串模板语句的函数
# ============================================================================
report_uptime () {
cat <<- _EOF_
  <H2>System Uptime</H2>
  <PRE>$(uptime)</PRE>
_EOF_
  return
}

read exits

# output：
# ----------------------------------------------------------------------------
# 这个函数会对输入的两个数字进行相加运算...
# 输入第一个数字: 
# 1
# 输入第二个数字: 
# 2
# 两个数字分别为 1 和 2 !
# 输入的两个数字之和为 3 !
# ----------------------------------------------------------------------------


# 函数返回值在调用该函数后通过 $? 来获得。
# ----------------------------------------------------------------------------
# 注意：所有函数在使用前必须定义。
#		这意味着必须将函数放在脚本开始部分，直至shell解释器首次发现它时，才可以使用。
#		调用函数仅使用其函数名即可。
