#!/bin/bash

# ======================================================================
#					流程语句————无限循环
# ======================================================================
# 让语句一直循环处理业务
# ----------------------------------------------------------------------



# 无限循环语法格式：

# while :
# do
#    command
# done

num=0

function test1() {
	while :
	do
		num=`expr $num + 1`
		echo "循环 ${num}"
		if ((num >= 10)); then
			sleep 10
		fi		
	done	
}

# 或者

# while true
# do
#    command
# done

function test2() {
	while true; do
		num=`expr $num + 1`
		echo "循环 ${num}"
		if ((num >= 10)); then
			sleep 10
		fi
	done	
}

# 或者
# for (( ; ; ))

for ((;;)) do
	num=`expr $num + 1`
	echo "循环 ${num}"
	if ((num >= 10)); then
		sleep 10
	fi
done	
		

