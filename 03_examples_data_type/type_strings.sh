#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-05-27 18:01:17
# @copyright by hoojo@2018
# @changelog Added bash `type -> strings` example



# =====================================================================
# 		Shell 字符串
# =====================================================================

#----------------------------------------------------------------------
# 字符串是shell编程中最常用最有用的数据类型，字符串可以用单引号，也可以用双引号，也可以不用引号。
#----------------------------------------------------------------------
# 单引号字符串的限制：
#
# 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
# 单引号字串中不能出现单引号（对单引号使用转义符也不行）。
#-----------------------------------
# 双引号的优点：
#
# 双引号里可以有变量
# 双引号里可以出现转义字符
#----------------------------------------------------------------------


# 单引号
# ---------------------------------------------------------------------
str='this is a string'
echo $str

# 原样输出，表达式和转义字符无效
# ---------------------------------------------------------------------
str='this is a string $str \"s'
echo $str

# 双引号
# ---------------------------------------------------------------------
your_name='jack'
str="Hello, I know you are \"$your_name\"! \n line" # 并沒有換行
echo $str

# 拼接字符串
# ---------------------------------------------------------------------
your_name="jason"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"

echo $greeting $greeting_1

# 获取字符串长度
# ---------------------------------------------------------------------
string="abcd"
echo ${#string} # 输出 4

string="hello,everyone my name is xiaoming"
expr length "$string" # 34

# 提取子字符串
# ---------------------------------------------------------------------
# 以下实例从字符串第 2 个字符开始截取 4 个字符：
string="shell is a great site"
echo ${string:1:4} # 输出 hell

# 查找子字符串
# ---------------------------------------------------------------------
# 查找字符 "i 或 s" 的位置：
string="shell is a great company"
echo `expr index "$string" is`

# 注意： 以上脚本中 "`" 是反引号，而不是单引号 "'"



# 字符串自动组合
# ---------------------------------------------------------------------
echo file{.txt,.bak,.sh}



# =====================================================================
# 示例：字符串展开截取
# ---------------------------------------------------------------------
# 注意负数前面必须有一个空格， 为防止与 ${parameter:-word} 展开形式混淆。
# length，若出现，则必须不能小于零。
# =====================================================================
# 展开成由 parameter 所包含的字符串的长度，${#parameter}
# 通常，parameter 是一个字符串；
# 然而，如果 parameter 是 @ 或者是 * 的话， 则展开结果是位置参数的个数。

foo="This string is long."
echo "'$foo' is ${#foo} characters long." # 'This string is long.' is 20 characters long.


# ${parameter:offset}
# ----------------------------------------------------------------------
foo="This string is long."
# 从 parameter 所包含的字符串中提取一部分字符
echo ${foo:5}       # string is long.
# 若 offset 的值为负数，则认为 offset 值是从字符串的末尾开始算起，而不是从开头
echo ${foo: -5}     # long.


# ${parameter:offset:length}
# ----------------------------------------------------------------------
foo="This string is long."
# 从 parameter 所包含的字符串中提取一部分字符
echo ${foo:5:6}     # string
# 若 offset 的值为负数，则认为 offset 值是从字符串的末尾开始算起，而不是从开头
echo ${foo: -5:2}   # lo


# =====================================================================
# 示例：删除字符串：清除开头一部分文本
# =====================================================================


#${parameter#pattern} 清除最短的匹配结果
# ----------------------------------------------------------------------
foo=file.txt.zip
echo ${foo#*.}      # txt.zip

#${parameter##pattern} 清除最长的匹配结果
# ----------------------------------------------------------------------
echo ${foo##*.}     # zip


# =====================================================================
# 示例：删除字符串，清除的文本从 parameter 所包含字符串的末尾开始，而不是开头。
# =====================================================================


#${parameter%pattern} 清除最短的匹配结果
# ----------------------------------------------------------------------
foo=file.txt.zip
# .zip 被匹配，删除
echo ${foo%.*}      # file.txt


#${parameter%%pattern} 清除最长的匹配结果
# ----------------------------------------------------------------------
# .txt.zip 被匹配删除
echo ${foo%%.*}     # file


# =====================================================================
# 示例：执行查找和替换操作
# ---------------------------------------------------------------------
# 如果找到了匹配通配符 pattern 的文本， 则用 string 的内容替换它。
# 在正常形式下，只有第一个匹配项会被替换掉。
# =====================================================================

#${parameter/pattern/string}    匹配第一个
# ----------------------------------------------------------------------
foo=JPG.JPG
echo ${foo/JPG/jpg}     # jpg.JPG

#${parameter//pattern/string}   所有的匹配项都会被替换掉
# ----------------------------------------------------------------------
echo ${foo//JPG/jpg}    # jpg.jpg

#${parameter/#pattern/string}   要求匹配项出现在字符串的开头
# ----------------------------------------------------------------------
echo ${foo/#JPG/jpg}    # jpg.JPG

#${parameter/%pattern/string}   要求匹配项出现在字符串的末尾
# ----------------------------------------------------------------------
echo ${foo/%JPG/jpg}    # JPG.jpg