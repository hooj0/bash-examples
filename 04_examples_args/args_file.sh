#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-07-28 09:38:08
# @copyright by hoojo@2018
# @changelog Add bash file shell option args use


# =================================================================
#		脚本文件选项参数的遍历与使用
# =================================================================
# 在使用脚本执行的时候，有时候需要传入动态参数调整脚本的运行流程。
# 通过遍历参数列表，判断参数的选择和值，来进入不同的流程。
# -----------------------------------------------------------------




# =================================================================
#	 示例：遍历参数列表，根据不同的选项执行不同的流程
# =================================================================
echo "传入参数：$@"
echo "第一个参数：${1##[--,-]}"
# 只有当第一个参数，带有 -- 或 - 的选项参数时，才进入循环
while [ "$1" != "${1##[--,-]}" ]; do
	case $1 in
		-D|--description)
			echo "description选项的参数就是$2"
			shift 2
		;;
	      -A|--author)
			echo "author选项的参数就是$2"
			shift 2
		 ;;
	     *)
			echo "使用该脚本时，虽然使用了选项，但是脚本不支持的，都匹配 *"
			echo "在这里就可以提示用户：脚本的使用方法，如：usage | help"
			shift 2
		;;
      esac
done
printf "\n\n"


# output:
#------------------------------------------------------------------
# $ ./args_file.sh -D hello -D world -A hoojo -s 123
# 传入参数：-D hello -D world -A hoojo -s 123
# 第一个参数：D
# 该选项的参数就是hello
# 该选项的参数就是world
# 该选项的参数就是hoojo
# 使用该脚本时，虽然使用了选项，但是脚本不支持的，都匹配 *
# 在这里就可以提示用户：脚本的使用方法，如：usage | help




# =================================================================
#	 示例：使用if来执行不同的流程分支
# =================================================================
printf "\n\n"
function ifProcessExample() {
	
	if [[ "$1" =~ ^- ]]; then
		echo "合法的Options选项参数：$1"
	fi
		
	while [[ "$1" =~ ^- ]]; do
		
		if [[ "$1" =~ ^-D || "$1" =~ ^--description ]]; then
			echo "description 选项$1的参数: $2"
			shift 2
		elif [[ "$1" == "-A" || "$1" == "--author" ]]; then
			echo "author 选项$1的参数: $2"
			shift 2
		else
			echo "没有匹配的流程：$*" 	
			break
		fi
	done
}

ifProcessExample -D "test example" --author hoojo -S 123
# output:
#------------------------------------------------------------------
# 合法的Options选项参数：-D
# description 选项-D的参数: test example
# author 选项--author的参数: hoojo
# 没有匹配的流程：-S 123




# =================================================================
#	 示例：bash shell 提供 shift 命令来帮助操作命令行参数，
#		该命令能够改变命令行参数的相对位置。
# 	shift 默认将每个参数变量左移一个位置。
#-------------------------------------------------------------------
# 如：假如给脚本或函数传递了2个参数，每执行一次shift命令，
#	     变量$2的值移组变量$1，变量$1的值被丢弃。
#
# shift 命令的使用
#		shift [n]          设置步长。默认是为1 .
# =================================================================
function shiftExample() {
	echo "参数列表：$*"
	echo "第1个参数：$1"
	echo "第2个参数：$2"
	printf "\n\n"
	
	
	echo "调用shift 2后……"
	shift 2
	echo "参数列表：$*"
	echo "第1个参数：$1"
	echo "第2个参数：$2"
}


# 调用函数
shiftExample a b c d e f
# output:
#-------------------------------------------------------------------
# 参数列表：a b c d e f
# 第1个参数：a
# 第2个参数：b


# 调用shift 2后……
# 参数列表：c d e f 		# 每调用shift 2 参数列表的前面的两个参数  被弹出移除
# 第1个参数：c
# 第2个参数：d




# =================================================================
#	 示例：參數的檢查與使用
# =================================================================
function checkArgs() {
	printf "\n\n"
	if [ $# -lt 1 ]; then
	    echo "沒有參數選項，请输入合法的参数"
	    exit 1
	fi
	
	echo "文件脚本： $0"
	
	echo "参数列表:"
	for arg in "$@"; do
	    echo $arg
	done
}

# checkArgs
# output:
#------------------------------------------------------------------
# 沒有參數選項，请输入合法的参数

# checkArgs a b c d
# output:
#------------------------------------------------------------------
# 文件脚本： ./args_file.sh
# 参数列表:
# a
# b
# c
# d




# =================================================================
#	 示例：getopt & getopts 获取参数选项列表
#------------------------------------------------------------------
# getopts （shell内置命令）
# 处理命令行参数是一个相似而又复杂的事情，为此，c提供了getopt/getopt_long等函数，
# c++的boost提供了options库，在shell中，处理此事的是getopts和getopt。
#------------------------------------------------------------------
# getopts/getopt的区别，getopt是个外部binary文件，而getopts是shell builtin。
#------------------------------------------------------------------
# getopts不能直接处理长的选项（如：--prefix=/home等）
#------------------------------------------------------------------
# getopts有两个参数，第一个参数是一个字符串，包括字符和“：”，
# 	每一个字符都是一个有效的选项，如果字符后面带有“：”，表示这个字符有自己的参数。
# getopts从命令中获取这些参数选项，并且删去了“-”，并将其赋值在getopts第二个参数中，
# 如果选项带有自己参数，这个参数赋值在“OPTARG”中。
# 变量$OPTARG存储相应选项的参数，而$OPTIND总是存储原始$*中下一个要处理的元素位置。
# =================================================================
	
function getoptsExample() {
	printf "\n\n"
	echo "参数列表：$*"
	
	# 构建数组
	params=($0 $*)
	echo "params：${params[@]}"
	
	# 这里getopts 有两个参数，参数1：":a:bc"，参数2：opt
	# 参数1的字符格式解析：
	#	":a:bc" 中的第一个 “：”， 表示忽略错误
	#	":a:bc" 中的 “a:” 表示有一个选项 a，并且 a 选项有自己的参数值
	#	":a:bc" 中的 “bc:” 表示有一个选项 b 和 选项 c，因为没有 “：”所有后面不需要跟参数值
	#
	# 使用实例：getoptsExample -a 11 -b -c；
	# 		这里的 -a 对应 `getopts ":a:bc"` 中的 a，参数值 11 就是对应 a 后面的 “：”
	# 		这里的 -b 对应 `getopts ":a:bc"` 中的 b，没有冒号没有参数值
	# 		这里的 -c 对应 `getopts ":a:bc"` 中的 e，没有冒号没有参数值
	
	while getopts ":a:bc" opt; do
		# opt 是 getopts 的参数二，它表示实际传入的选项，并删除 选项的“-”
		#
		# 使用实例：getoptsExample -a 11 -b -c；
		#	-a 选项，opt=a
		#	-b 选项，opt=b
		#	-c 选项，opt=c
		
		# $OPTARG 记录选项的参数值，$OPTIND 下一个参数|选项位置
		printf "选项：%s ->" $opt
        case $opt in
            #a ) echo "参数值：$OPTARG， 下一个参数位置：$OPTIND，参数或选项："; eval echo \$$OPTIND;;
            # 数组 从 0 开始，文件参数列表 从 1 开始
            a ) echo "参数值：$OPTARG， 下一个：参数位置：$OPTIND，参数或选项：${params[($OPTIND)]}";;
            b ) echo "下一个：参数位置：$OPTIND，参数或选项：${params[($OPTIND - 1)]}";;
            c ) echo "下一个：参数位置：$OPTIND，参数或选项：${params[($OPTIND - 1)]}";;
            ? ) echo "error" exit 1;;
        esac
	done
	
	echo "下一个参数位置：$OPTIND"
	
	echo "清理前参数列表：$*"	# -a 11 -b -c start help -h --debug
	# 清理 $* 中 getopts 中出现的选项 ":a:bc" 内容的参数，剩下的参数都可以进行正常读取
	shift $(($OPTIND - 1))
	echo "文件：$0"
	echo "清理后参数列表：$*"	# start help -h --debug
}


getoptsExample -a 11 -b -c start help -h --debug
# output:
#------------------------------------------------------------------
#参数列表：				-a 11 -b -c start help -h --debug
#params：./args_file.sh -a 11 -b -c start help -h --debug
#选项：a ->参数值：11， 下一个参数位置：3，参数或选项：-b
#选项：b ->下一个参数位置：4，参数或选项：-b
#选项：c ->下一个参数位置：5，参数或选项：-c
#下一个参数位置：5
#清理前参数列表：-a 11 -b -c start help -h --debug
#文件：./args_file.sh
#清理后参数列表：start help -h --debug




# ======================================================================================
#	 示例：getopt（一个外部工具）
#---------------------------------------------------------------------------------------
# 具体用用法查看手册： man getopt 
#	-o表示短选项，两个冒号表示该选项有一个可选参数，可选参数必须紧贴选项，如：-carg 而不能是-c arg
#	--long表示长选项，长选项参数传递和短选项不同，如：--debug true
# ======================================================================================
function getoptExample() {
	printf "\n\n"
	
	echo "参数列表：$*"
	temp=`getopt -o ab:c:: --long a-long,b-long:,c-long:: -n 'example.bash' -- "$@"`
	# -o 表示短选项：`ab:c::`, 
	#		短选项 a，    没有参数
	#		短选项 b:，  一个冒号，表示是1个“必选”参数，传参方式：-b 2 或 -b2
	#		短选项 c::，两个冒号，表示是 1个“可选”参数，传参方式：-c310
	# --long 表示常选项：`a-long,b-long:,c-long::`
	# 		长选项 a-long， 没有参数	 
	# 		长选项 b-long:，一个冒号，表示1个参数，传参方式：--b-long 111	 
	# 		长选项c-long::，两个冒号，表示1个可选参数，传参方式：--c-long=123
	#
	# -n 'example.bash' -- "$@" 
	# -n: 出错时的信息
	# -- 作为跳出结束循环标记 
	# "$@" 将后续的所有参数传入
	
	if [ $? != 0 ] ; then 
		echo "terminating..." >&2; 
		exit 1; 
	fi
	
	# set 会重新排列参数的顺序，也就是改变$1,$2...$n的值，这些值在getopt中重新排列过了
	eval set -- "$temp"
	echo "转换后temp参数：$temp" 	# 经过转换，temp中的选项参数被替换成实际参数值
	echo "转换后参数列表：$*"		# 经过转换，参数列表也被替换成 temp 中定义的参数选项顺序的参数
	
	#经过getopt的处理，下面处理具体选项
	while true ; do
        case "$1" in
            -a|--a-long) echo "option a" ; shift ;;
            -b|--b-long) echo "option b, argument \`$2'" ; shift 2 ;;
            -c|--c-long)
            	echo "-c|--c-long ---> $2"
                case "$2" in
                    "") echo "option c, no argument"; shift 2 ;;
                    *)  echo "option c, argument \`$2'" ; shift 2 ;;
                esac ;;
            --) shift ; break ;;
            *) echo "internal error!" ; exit 1 ;;
        esac
	done
	
	# 剩下的其他参数
	echo "剩下的其他参数: $*"
	echo "remaining arguments:"
	for arg do
	   echo '--> '"\`$arg'" ;
	done
}



#getoptExample --b-long abc -a -c33 hahahaha

# output:
#------------------------------------------------------------------
# 参数列表：--b-long abc -a -c33 hahahaha
# 转换后temp参数： --b-long 'abc' -a -c '33' -- 'hahahaha'
# 转换后参数列表：--b-long abc -a -c 33 -- hahahaha
# option b, argument `abc'
# option a
# option c, argument `33'
# remaining arguments:
# --> `hahahaha'


# 下面 -b 两种传入方式都可以
#getoptExample -a -b hello -cworld 2333 bash_shell
#getoptExample -a -bhello -cworld 2333 bash_shell

# output:
#------------------------------------------------------------------
#参数列表：-a -bhello -cworld 2333 bash_shell
#转换后temp参数： -a -b 'hello' -c 'world' -- '2333' 'bash_shell'
#转换后参数列表：-a -b hello -c world -- 2333 bash_shell
#option a
#option b, argument `hello'
#-c ---> world
#option c, argument `world'
#remaining arguments:
#--> `2333'
#--> `bash_shell'


# 同样长选项一样使用，长选项"可选参数"传参数要用“=”号
#getoptExample --a-long --b-long hello --c-long=world 2333 666 bash_shell example

# output:
#------------------------------------------------------------------
#参数列表：--a-long --b-long hello --c-long=world 2333 666 bash_shell example
#转换后temp参数： --a-long --b-long 'hello' --c-long 'world' -- '2333' '666' 'bash_shell' 'example'
#转换后参数列表：--a-long --b-long hello --c-long world -- 2333 666 bash_shell example
#option a
#option b, argument `hello'
#-c|--c-long ---> world
#option c, argument `world'
#remaining arguments:
#--> `2333'
#--> `666'
#--> `bash_shell'
#--> `example'

getoptExample --a-long -bhello -cWORLD 2333 666 bash_shell example



# =================================================================
# 示例：shift 示例
# =================================================================
usage () {
    echo "$PROGNAME: usage: $PROGNAME [-f file | -i]"
    return
}

# process command line options
interactive=
filename=

# 位置参数 $1 不为空的时候，这个循环会持续运行
while [[ -n $1 ]]; do
    case $1 in
    -f | --file)            shift
                            filename=$1
                            ;;
    -i | --interactive)     interactive=1
                            ;;
    -h | --help)            usage
                            exit
                            ;;
    *)                      usage >&2
                            exit 1
                            ;;
    esac
    # shift 命令， 用来提升位置参数，以便确保该循环最终会终止
    shift
done