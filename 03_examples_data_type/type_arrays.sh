#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-27 18:05:28
# @copyright by hoojo@2018
# @changelog Added python3 `data type->type arrays` example



#########################################################################
# 				Shell 数组
#########################################################################
# bash支持一维数组（不支持多维数组），并且没有限定数组的大小。
#-------------------------------------------------------------------------
#
# 类似与C语言，数组元素的下标由0开始编号。
# 获取数组中的元素要利用下标，下标可以是整数或算术表达式，其值应大于或等于0。
#########################################################################

# 定义数组
#-------------------------------------------------------------------------
# 在Shell中，用括号来表示数组，数组元素用"空格"符号分割开。定义数组的一般形式为：
#
# 数组名=(值1 值2 ... 值n)
#-------------------------------------------------------------------------


# 例如：
#-------------------------------------------------------------------------
array_name=(value0 value1 value2 value3)
echo "array: ${array_name[@]}"

# 或者
array_name=(
 	a
 	b
 	c
 	d
)
echo "array: ${array_name[@]}"

# 或者
array=([2]=a [0]=b [1]=c)
echo "array: ${array[@]}"

# 还可以单独定义数组的各个分量：
#-------------------------------------------------------------------------
# 可以不使用连续的下标，而且下标的范围没有限制。
array_name[0]=v0
array_name[1]=v1
array_name[n]=vn

echo
echo "array[@]: ${array_name[@]}"
echo
echo "array[0]: ${array_name[0]}"
echo "array[1]: ${array_name[1]}"
echo "array[2]: ${array_name[2]}"
echo "array[3]: ${array_name[3]}"
echo

# a 会转换为 0
echo a
array_name[a]=a
echo "array[a]: ${array_name[a]}"


#-------------------------------------------------------------------------
# 数组的值也可以写入变量。
#-------------------------------------------------------------------------

# 例如：
A=1
my_array=($A B C D)

echo "第一个元素为: ${my_array[0]}" # 1
echo "第二个元素为: ${my_array[1]}"
echo "第三个元素为: ${my_array[2]}"
echo "第四个元素为: ${my_array[3]}"


#-------------------------------------------------------------------------
# 读取数组
#-------------------------------------------------------------------------
# 读取数组元素值的一般格式是：
# ${数组名[下标]}
#
# 例如：
valueN=${array_name[n]}
echo "valueN:${valueN}"

# 使用@符号可以获取数组中的所有元素，例如：
echo ${array_name[@]}


# 根据数组元素索引获取该数组元素值时，数组下标可为变量。
arr=(a b c d)
i=2
echo ${arr[i]} # c


#-------------------------------------------------------------------------
# 获取数组的长度
#-------------------------------------------------------------------------
# 获取数组长度的方法与获取字符串长度的方法相同，例如：
#
# 取得数组元素的个数
length=${#array_name[@]}
echo "array length: ${length}"

# 或者
length=${#array_name[*]}
echo "array length: ${length}"

# 取得数组单个元素的长度
item_length=${#array_name[n]}
echo "array length: ${item_length}"