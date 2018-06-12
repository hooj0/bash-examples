#!/bin/bash

###############################################################
#					使用变量
###############################################################


###############################################################
# 使用一个定义过的变量，只要在变量名前面加美元符号即可，如：

your_name="qinjx"
echo $your_name
echo ${your_name}

# 变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界，比如下面这种情况：
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done

# 如果不给skill变量加花括号，写成echo "I am good at $skillScript"，
# 解释器就会把$skillScript当成一个变量（其值为空），代码执行结果就不是我们期望的样子了。

# 推荐给所有变量加上花括号，这是个好的编程习惯。

# 已定义的变量，可以被重新定义，如：
your_name="tom"
echo $your_name

your_name="alibaba"
echo $your_name
# 这样写是合法的，但注意，第二次赋值的时候不能写$your_name="alibaba"，使用变量的时候才加美元符（$）。