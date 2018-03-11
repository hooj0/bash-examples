#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-18 10:29:15
# @copyright by hoojo@2018
# @changelog Added bash `process -> select` example

# ======================================================================
#					Shell —— 循环语句 select
# ======================================================================
# select 循环语句是bash的一种扩展应用，擅长于交互式场合。
# 用户可以从一组不同的值中进行选择：
# ----------------------------------------------------------------------



# ======================================================================
# 示例：选择你的操作系统。
#	一次选择后，break 跳出循环
# ======================================================================
echo "What is your favourite OS?"
select var in "Linux" "Gnu Hurd" "Free BSD" "Other"; do
  break
done

echo "You have selected $var"





# ======================================================================
# 示例：RANDOM 随机数
# ======================================================================
pocket=()

select var in 跳跳糖 糖 很多糖 企鹅糖; do
  echo "除了 $var 还要什么吗？"
  echo "RANDOM: $RANDOM"
  if ((RANDOM%4 == 0)); then
    echo "呀！时间不够了，快上车！"
    break 
  fi
  
  pocket+=("$var")
done

echo "你最后说的那个 $var 弄丢了……"

# IFS 是内部域分隔符，设置变量 pocket的分隔符
IFS='、'
echo "现在口袋里只有：${pocket[*]}。"

# 设置回原来的值
IFS=$' \t\n'










read quit