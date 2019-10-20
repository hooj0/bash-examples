#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-06-12 21:01:18
# @copyright by hoojo@2018
# @changelog Added bash `import -> shell` example

# ======================================================================
#					Shell 文件导入
# ======================================================================
# 和其他语言一样，Shell 也可以包含外部脚本。这样可以很方便的封装一些公用的代码作为一个独立的文件。
# ----------------------------------------------------------------------
# Shell 文件包含的语法格式如下：

# . filename   
# 注意点号(.)和文件名中间有一空格

# 或
# source filename
# ---------------------------------------------------------------------------



#	实例
# ---------------------------------------------------------------------------

# 创建两个 shell 脚本文件。

# simple.sh 代码如下：
# url="http://www.baidu.com"


# simple2.sh 代码如下：

#使用  “.” 号来引用 simple.sh 文件
. simple.sh

# 或者使用以下包含文件代码
# source ./simple.sh

echo "官网地址：$url"

# 接下来，我们为 simple2.sh 添加可执行权限并执行：
#$ chmod +x simple2.sh
#$ ./simple2.sh

#官网地址：http://www.runoob.com
#注：被包含的文件 simple.sh 不需要可执行权限。

read exits