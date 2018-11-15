#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-07-01 15:34:30
# @copyright by hoojo@2018
# @changelog Added bash `settings->settings ifs` example



# =================================================================
#	设置IFS —— 设置分词的方式
# =================================================================
# 设置默认是分词分割规则：通常，shell 对提供给 read 的输入按照单词进行分离。
#
# 正如我们所见到的，这意味着多个由一个或几个空格分离开的单词在输入行中变成独立的个体，
# 并被 read 赋值给单独的变量。这种行为由 shell 变量__IFS__ （内部字符分隔符）配置。
# IFS 的默认值包含一个空格，一个 tab，和一个换行符，每一个都会把字段分割开。
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