#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-07-01 15:34:30
# @copyright by hoojo@2018
# @changelog Added python3 `settings->settings ifs` example



# =================================================================
#	设置IFS —— 设置分词的方式
# =================================================================
# 设置默认是分词分割规则
# -----------------------------------------------------------------




# =================================================================
#	 示例：使用空格分词，items被分割成3个词
# =================================================================
IFS=$' '
items="a b c"
for x in $items; do
    echo "$x"
done


# output:
#-------------------------------------------------------------------
# a
# b
# c



# =================================================================
#	 示例：使用换行分词，items被认为是一个单词
# =================================================================
IFS=$'\n'
items="a b c"
for y in $items; do
    echo "$y"
done

# output:
#-------------------------------------------------------------------
# a b c




# =================================================================
#	 示例：数组设置IFS分词或默认情况效果都是一样的
# =================================================================
names=(
  "Aaron Maxwell"
  "Wayne Gretzky"
  "David Beckham"
  "Anderson da Silva"
)

echo "With default IFS value..."
for name in ${names[@]}; do
  echo "$name"
done

echo ""
echo "With strict-mode IFS value..."
IFS=$'\n\t'
for name in ${names[@]}; do
  echo "$name"
done

# output:
#-------------------------------------------------------------------
#With default IFS value...
#Aaron Maxwell
#Wayne Gretzky
#David Beckham
#Anderson da Silva

#With strict-mode IFS value...
#Aaron Maxwell
#Wayne Gretzky
#David Beckham
#Anderson da Silva



read exits