+ [**.idea/inspectionProfiles**](./.idea/inspectionProfiles)
+ [**.idea**](./.idea)
+ [**01_example_started**](./01_example_started)
	- [`hello_world`](./01_example_started/hello_world.sh)
		+ [运行 Shell 脚本有两种方法：#L11](./01_example_started/hello_world.sh#L11)
		+ [1、作为可执行程序#L14](./01_example_started/hello_world.sh#L14)
		+ [将上面的代码保存为 hello_world.sh，并 cd 到相应目录：#L16](./01_example_started/hello_world.sh#L16)
		+ [chmod +x ./hello_world.sh  使脚本具有执行权限#L18](./01_example_started/hello_world.sh#L18)
		+ [注意，一定要写成 ./hello_world.sh，而不是 hello_world.sh，运行其它二进制的程序也一样，#L22](./01_example_started/hello_world.sh#L22)
		+ [你的当前目录通常不在 PATH 里，所以写成 hello_world.sh 是会找不到命令的，要用 ./hello_world.sh 告诉系统说，就在当前目录找。#L24](./01_example_started/hello_world.sh#L24)
		+ [2、作为解释器参数#L28](./01_example_started/hello_world.sh#L28)
		+ [这种运行方式是，直接运行解释器，其参数就是 shell 脚本的文件名，如：#L30](./01_example_started/hello_world.sh#L30)
		+ [这种方式运行的脚本，不需要在第一行指定解释器信息，写了也没用。#L38](./01_example_started/hello_world.sh#L38)
		+ [作用:在当前 bash 环境下读取并执行 FileName 中的命令。该 filename 文件可以无 "执行权限"。#L52](./01_example_started/hello_world.sh#L52)
		+ [注：该命令通常用命令 . 来替代。#L54](./01_example_started/hello_world.sh#L54)
		+ [或#L60](./01_example_started/hello_world.sh#L60)
		+ [作用:打开一个子 shell 来读取并执行 FileName 中命令。该 filename 文件可以无 "执行权限"。#L63](./01_example_started/hello_world.sh#L63)
		+ [作用: 打开一个子 shell 来读取并执行 FileName 中命令，该 filename 文件需要 "执行权限"。#L70](./01_example_started/hello_world.sh#L70)
		+ [注：运行一个 shell 脚本时会启动另一个命令解释器。#L72](./01_example_started/hello_world.sh#L72)
+ [**02_examples_variable**](./02_examples_variable)
	- [`var_assignment`](./02_examples_variable/var_assignment.sh)
		+ [变量运算赋值#L25](./02_examples_variable/var_assignment.sh#L25)
		+ [bash 里面可以用 (( )) 执行 C 风格的算术表达式#L27](./02_examples_variable/var_assignment.sh#L27)
		+ [变量参数默认值#L56](./02_examples_variable/var_assignment.sh#L56)
		+ [当文件执行参数不为1个时，提示#L62](./02_examples_variable/var_assignment.sh#L62)
		+ [当文件参数有2个时#L67](./02_examples_variable/var_assignment.sh#L67)
		+ [变量$foo尚未设置。在严格模式下，下一行触发错误。#L73](./02_examples_variable/var_assignment.sh#L73)
		+ [现在我们明确地设置foo：#L80](./02_examples_variable/var_assignment.sh#L80)
		+ [忽略默认值. $bar = "beta":#L83](./02_examples_variable/var_assignment.sh#L83)
		+ [要使默认值为空字符串，请使用 ${VARNAME:-}#L86](./02_examples_variable/var_assignment.sh#L86)
	- [`var_declare`](./02_examples_variable/var_declare.sh)
		+ [var$temp="st1"  var=st1: 未找到命令#L10](./02_examples_variable/var_declare.sh#L10)
		+ [变量名的命名须遵循如下规则：#L13](./02_examples_variable/var_declare.sh#L13)
		+ [var1 = "不能有空格"	 var1: 未找到命令#L22](./02_examples_variable/var_declare.sh#L22)
		+ [有效的 Shell 变量名示例如下：#L30](./02_examples_variable/var_declare.sh#L30)
		+ [无效的变量命名：#L37](./02_examples_variable/var_declare.sh#L37)
		+ [除了显式地直接赋值，还可以用语句给变量赋值，如：#L44](./02_examples_variable/var_declare.sh#L44)
		+ [将 /etc 下目录的文件名循环出来。#L46](./02_examples_variable/var_declare.sh#L46)
		+ [或#L51](./02_examples_variable/var_declare.sh#L51)
	- [`var_delete`](./02_examples_variable/var_delete.sh)
		+ [变量被删除后不能再次使用。#L11](./02_examples_variable/var_delete.sh#L11)
		+ [实例#L17](./02_examples_variable/var_delete.sh#L17)
		+ [以上实例执行将没有任何输出。#L23](./02_examples_variable/var_delete.sh#L23)
	- [`var_readonly`](./02_examples_variable/var_readonly.sh)
		+ [设置为只读#L9](./02_examples_variable/var_readonly.sh#L9)
		+ [下面的例子尝试更改只读变量，结果报错：#L12](./02_examples_variable/var_readonly.sh#L12)
		+ [运行脚本，结果如下：#L15](./02_examples_variable/var_readonly.sh#L15)
	- [`var_scope`](./02_examples_variable/var_scope.sh)
		+ [3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行#L11](./02_examples_variable/var_scope.sh#L11)
	- [`var_ternary_op`](./02_examples_variable/var_ternary_op.sh)
	- [`var_used`](./02_examples_variable/var_used.sh)
		+ [使用一个定义过的变量，只要在变量名前面加美元符号即可，如：#L9](./02_examples_variable/var_used.sh#L9)
		+ [变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界，比如下面这种情况：#L15](./02_examples_variable/var_used.sh#L15)
		+ [如果不给skill变量加花括号，写成echo "I am good at $skillScript"，#L20](./02_examples_variable/var_used.sh#L20)
		+ [推荐给所有变量加上花括号，这是个好的编程习惯。#L23](./02_examples_variable/var_used.sh#L23)
		+ [已定义的变量，可以被重新定义，如：#L25](./02_examples_variable/var_used.sh#L25)
		+ [这样写是合法的，但注意，第二次赋值的时候不能写$your_name="alibaba"，使用变量的时候才加美元符（$）。#L31](./02_examples_variable/var_used.sh#L31)
+ [**03_examples_data_type**](./03_examples_data_type)
	- [`type_arrays`](./03_examples_data_type/type_arrays.sh)
		+ [类似与C语言，数组元素的下标由0开始编号。#L9](./03_examples_data_type/type_arrays.sh#L9)
		+ [定义数组#L13](./03_examples_data_type/type_arrays.sh#L13)
		+ [在Shell中，用括号来表示数组，数组元素用"空格"符号分割开。定义数组的一般形式为：#L15](./03_examples_data_type/type_arrays.sh#L15)
		+ [数组名=(值1 值2 ... 值n)#L17](./03_examples_data_type/type_arrays.sh#L17)
		+ [例如：#L21](./03_examples_data_type/type_arrays.sh#L21)
		+ [或者#L26](./03_examples_data_type/type_arrays.sh#L26)
		+ [或者#L35](./03_examples_data_type/type_arrays.sh#L35)
		+ [还可以单独定义数组的各个分量：#L39](./03_examples_data_type/type_arrays.sh#L39)
		+ [可以不使用连续的下标，而且下标的范围没有限制。#L41](./03_examples_data_type/type_arrays.sh#L41)
		+ [数组的值也可以写入变量。#L62](./03_examples_data_type/type_arrays.sh#L62)
		+ [例如：#L65](./03_examples_data_type/type_arrays.sh#L65)
		+ [读取数组#L76](./03_examples_data_type/type_arrays.sh#L76)
		+ [读取数组元素值的一般格式是：#L78](./03_examples_data_type/type_arrays.sh#L78)
		+ [例如：#L81](./03_examples_data_type/type_arrays.sh#L81)
		+ [使用@符号可以获取数组中的所有元素，例如：#L85](./03_examples_data_type/type_arrays.sh#L85)
		+ [根据数组元素索引获取该数组元素值时，数组下标可为变量。#L89](./03_examples_data_type/type_arrays.sh#L89)
		+ [获取数组的长度#L96](./03_examples_data_type/type_arrays.sh#L96)
		+ [获取数组长度的方法与获取字符串长度的方法相同，例如：#L98](./03_examples_data_type/type_arrays.sh#L98)
		+ [取得数组元素的个数#L100](./03_examples_data_type/type_arrays.sh#L100)
		+ [或者#L104](./03_examples_data_type/type_arrays.sh#L104)
		+ [取得数组单个元素的长度#L108](./03_examples_data_type/type_arrays.sh#L108)
	- [`type_strings`](./03_examples_data_type/type_strings.sh)
		+ [单引号字符串的限制：#L9](./03_examples_data_type/type_strings.sh#L9)
		+ [单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；#L11](./03_examples_data_type/type_strings.sh#L11)
		+ [双引号的优点：#L14](./03_examples_data_type/type_strings.sh#L14)
		+ [双引号里可以有变量#L16](./03_examples_data_type/type_strings.sh#L16)
		+ [单引号#L21](./03_examples_data_type/type_strings.sh#L21)
		+ [原样输出，表达式和转义字符无效#L26](./03_examples_data_type/type_strings.sh#L26)
		+ [双引号#L31](./03_examples_data_type/type_strings.sh#L31)
		+ [拼接字符串#L37](./03_examples_data_type/type_strings.sh#L37)
		+ [获取字符串长度#L45](./03_examples_data_type/type_strings.sh#L45)
		+ [提取子字符串#L53](./03_examples_data_type/type_strings.sh#L53)
		+ [以下实例从字符串第 2 个字符开始截取 4 个字符：#L55](./03_examples_data_type/type_strings.sh#L55)
		+ [查找子字符串#L59](./03_examples_data_type/type_strings.sh#L59)
		+ [查找字符 "i 或 s" 的位置：#L61](./03_examples_data_type/type_strings.sh#L61)
		+ [注意： 以上脚本中 "`" 是反引号，而不是单引号 "'"#L65](./03_examples_data_type/type_strings.sh#L65)
		+ [字符串自动组合#L69](./03_examples_data_type/type_strings.sh#L69)
	- [`type_strings_substr`](./03_examples_data_type/type_strings_substr.sh)
		+ [一个  表示从左边删除到第一个指定的字符；#L10](./03_examples_data_type/type_strings_substr.sh#L10)
		+ [一个 % 表示从右边删除到第一个指定的字符；#L16](./03_examples_data_type/type_strings_substr.sh#L16)
		+ [删除包括了指定的字符本身。#L19](./03_examples_data_type/type_strings_substr.sh#L19)
		+ [假设有变量#L22](./03_examples_data_type/type_strings_substr.sh#L22)
		+ [其中 var 是变量名， 号是运算符，*// 表示从左边开始删除第一个 // 号及左边的所有字符#L29](./03_examples_data_type/type_strings_substr.sh#L29)
		+ [*/ 表示从左边开始删除最后（最右边）一个 / 号及左边的所有字符#L37](./03_examples_data_type/type_strings_substr.sh#L37)
		+ [3. %号截取，删除右边字符，保留左边字符#L44](./03_examples_data_type/type_strings_substr.sh#L44)
		+ [%/* 表示从右边开始，删除第一个 / 号及右边的字符#L46](./03_examples_data_type/type_strings_substr.sh#L46)
		+ [4. %% 号截取，删除右边字符，保留左边字符#L52](./03_examples_data_type/type_strings_substr.sh#L52)
		+ [%%/* 表示从右边开始，删除最后（最左边）一个 / 号及右边的字符#L54](./03_examples_data_type/type_strings_substr.sh#L54)
		+ [5. 从左边第几个字符开始，及字符的个数#L60](./03_examples_data_type/type_strings_substr.sh#L60)
		+ [其中的 0 表示左边第一个字符开始，5 表示字符的总个数。#L62](./03_examples_data_type/type_strings_substr.sh#L62)
		+ [其中的 7 表示左边第8个字符开始，一直到结束。#L70](./03_examples_data_type/type_strings_substr.sh#L70)
		+ [7. 从右边第几个字符开始，及字符的个数#L76](./03_examples_data_type/type_strings_substr.sh#L76)
		+ [其中的 0-7 表示右边算起第七个字符开始，3 表示字符的个数。#L78](./03_examples_data_type/type_strings_substr.sh#L78)
		+ [表示从右边第七个字符开始，一直到结束。#L86](./03_examples_data_type/type_strings_substr.sh#L86)
		+ [实例演示#L94](./03_examples_data_type/type_strings_substr.sh#L94)
		+ [运行结果：#L113](./03_examples_data_type/type_strings_substr.sh#L113)
		+ [原字符串为：http://www.hoojo.com/linux/linux-shell-variable.html#L115](./03_examples_data_type/type_strings_substr.sh#L115)
+ [**04_examples_args**](./04_examples_args)
	- [`args_file`](./04_examples_args/args_file.sh)
		+ [脚本文件选项参数的遍历与使用#L12](./04_examples_args/args_file.sh#L12)
		+ [在使用脚本执行的时候，有时候需要传入动态参数调整脚本的运行流程。#L14](./04_examples_args/args_file.sh#L14)
		+ [示例：遍历参数列表，根据不同的选项执行不同的流程#L22](./04_examples_args/args_file.sh#L22)
		+ [只有当第一个参数，带有 -- 或 - 的选项参数时，才进入循环#L26](./04_examples_args/args_file.sh#L26)
		+ [传入参数：-D hello -D world -A hoojo -s 123#L50](./04_examples_args/args_file.sh#L50)
		+ [该选项的参数就是hello#L52](./04_examples_args/args_file.sh#L52)
		+ [该选项的参数就是hoojo#L54](./04_examples_args/args_file.sh#L54)
		+ [在这里就可以提示用户：脚本的使用方法，如：usage | help#L56](./04_examples_args/args_file.sh#L56)
		+ [示例：使用if来执行不同的流程分支#L62](./04_examples_args/args_file.sh#L62)
		+ [合法的Options选项参数：-D#L89](./04_examples_args/args_file.sh#L89)
		+ [没有匹配的流程：-S 123#L92](./04_examples_args/args_file.sh#L92)
		+ [示例：bash shell 提供 shift 命令来帮助操作命令行参数，#L98](./04_examples_args/args_file.sh#L98)
		+ [如：假如给脚本或函数传递了2个参数，每执行一次shift命令，#L102](./04_examples_args/args_file.sh#L102)
		+ [shift 命令的使用#L105](./04_examples_args/args_file.sh#L105)
		+ [调用函数#L123](./04_examples_args/args_file.sh#L123)
		+ [参数列表：a b c d e f#L127](./04_examples_args/args_file.sh#L127)
		+ [第2个参数：b#L129](./04_examples_args/args_file.sh#L129)
		+ [调用shift 2后……#L132](./04_examples_args/args_file.sh#L132)
		+ [第1个参数：c#L134](./04_examples_args/args_file.sh#L134)
		+ [示例：參數的檢查與使用#L141](./04_examples_args/args_file.sh#L141)
		+ [沒有參數選項，请输入合法的参数#L161](./04_examples_args/args_file.sh#L161)
		+ [文件脚本： ./args_file.sh#L166](./04_examples_args/args_file.sh#L166)
		+ [示例：getopt & getopts 获取参数选项列表#L177](./04_examples_args/args_file.sh#L177)
		+ [处理命令行参数是一个相似而又复杂的事情，为此，c提供了getopt/getopt_long等函数，#L180](./04_examples_args/args_file.sh#L180)
		+ [每一个字符都是一个有效的选项，如果字符后面带有“：”，表示这个字符有自己的参数。#L188](./04_examples_args/args_file.sh#L188)
		+ [如果选项带有自己参数，这个参数赋值在“OPTARG”中。#L190](./04_examples_args/args_file.sh#L190)
		+ [参数列表：				-a 11 -b -c start help -h --debug#L246](./04_examples_args/args_file.sh#L246)
		+ [选项：a ->参数值：11， 下一个参数位置：3，参数或选项：-b#L248](./04_examples_args/args_file.sh#L248)
		+ [选项：c ->下一个参数位置：5，参数或选项：-c#L250](./04_examples_args/args_file.sh#L250)
		+ [清理前参数列表：-a 11 -b -c start help -h --debug#L252](./04_examples_args/args_file.sh#L252)
		+ [清理后参数列表：start help -h --debug#L254](./04_examples_args/args_file.sh#L254)
		+ [示例：getopt（一个外部工具）#L260](./04_examples_args/args_file.sh#L260)
		+ [具体用用法查看手册： man getopt#L262](./04_examples_args/args_file.sh#L262)
		+ [参数列表：--b-long abc -a -c33 hahahaha#L325](./04_examples_args/args_file.sh#L325)
		+ [转换后参数列表：--b-long abc -a -c 33 -- hahahaha#L327](./04_examples_args/args_file.sh#L327)
		+ [下面 -b 两种传入方式都可以#L335](./04_examples_args/args_file.sh#L335)
		+ [参数列表：-a -bhello -cworld 2333 bash_shell#L341](./04_examples_args/args_file.sh#L341)
		+ [转换后参数列表：-a -b hello -c world -- 2333 bash_shell#L343](./04_examples_args/args_file.sh#L343)
		+ [同样长选项一样使用，长选项"可选参数"传参数要用“=”号#L353](./04_examples_args/args_file.sh#L353)
		+ [参数列表：--a-long --b-long hello --c-long=world 2333 666 bash_shell example#L358](./04_examples_args/args_file.sh#L358)
		+ [转换后参数列表：--a-long --b-long hello --c-long world -- 2333 666 bash_shell example#L360](./04_examples_args/args_file.sh#L360)
	- [`args_input`](./04_examples_args/args_input.sh)
		+ [$0 代表当前执行脚本的文件名#L9](./04_examples_args/args_input.sh#L9)
		+ [以下实例我们向脚本传递三个参数，并分别输出，其中 $0 为执行的文件名：#L13](./04_examples_args/args_input.sh#L13)
		+ [为脚本设置可执行权限，并执行脚本，输出结果如下所示：#L21](./04_examples_args/args_input.sh#L21)
		+ [输出结果#L26](./04_examples_args/args_input.sh#L26)
		+ [执行的文件名：./args_input.sh#L30](./04_examples_args/args_input.sh#L30)
		+ [第二个参数为：2#L32](./04_examples_args/args_input.sh#L32)
	- [`args_read`](./04_examples_args/args_read.sh)
		+ [read 命令用于获取键盘输入信息#L11](./04_examples_args/args_read.sh#L11)
		+ [它的语法形式一般是：#L16](./04_examples_args/args_read.sh#L16)
		+ [以下实例读取键盘输入的内容并将其赋值给shell变量，为：-p 参数由于设置提示信息：#L21](./04_examples_args/args_read.sh#L21)
		+ [测试结果：#L30](./04_examples_args/args_read.sh#L30)
		+ [如果输入的词组个数大于需要的参数个数，则多出的词组将被作为整体为最后一个参数接收。#L40](./04_examples_args/args_read.sh#L40)
		+ [测试文件 test.sh 代码如下：#L43](./04_examples_args/args_read.sh#L43)
		+ [执行测试：#L49](./04_examples_args/args_read.sh#L49)
		+ [一 二 三 四#L53](./04_examples_args/args_read.sh#L53)
		+ [实例, 文件 test.sh:#L57](./04_examples_args/args_read.sh#L57)
		+ [请输入一段文字:#L72](./04_examples_args/args_read.sh#L72)
	- [`args_special`](./04_examples_args/args_special.sh)
		+ [如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。#L10](./04_examples_args/args_special.sh#L10)
		+ [$!			后台运行的最后一个进程的ID号#L12](./04_examples_args/args_special.sh#L12)
		+ [如"$@"用「"」括起来的情况、以"$1" "$2" … "$n" 的形式输出所有参数。#L14](./04_examples_args/args_special.sh#L14)
		+ [运行脚本，传入参数#L19](./04_examples_args/args_special.sh#L19)
		+ [相同点：都是引用所有参数。#L36](./04_examples_args/args_special.sh#L36)
		+ [非数组形式：假设在脚本运行时写了三个参数 1、2、3，，则 " * " 等价于 "1 2 3"（传递了一个参数），#L38](./04_examples_args/args_special.sh#L38)
+ [**05_examples_operator**](./05_examples_operator)
	- [`operator_boolean`](./05_examples_operator/operator_boolean.sh)
		+ [实例#L20](./05_examples_operator/operator_boolean.sh#L20)
		+ [布尔运算符实例如下：#L22](./05_examples_operator/operator_boolean.sh#L22)
		+ [执行脚本，输出结果如下所示：#L72](./05_examples_operator/operator_boolean.sh#L72)
	- [`operator_file`](./05_examples_operator/operator_file.sh)
		+ [操作符			说明																		举例#L10](./05_examples_operator/operator_file.sh#L10)
		+ [file1 -nt file2      file1 比 file2 更新#L28](./05_examples_operator/operator_file.sh#L28)
		+ [实例#L34](./05_examples_operator/operator_file.sh#L34)
		+ [变量 file 表示文件"./operator_file.sh"，它的大小为100字节，具有 rwx 权限。下面的代码，将检测该文件的各种属性：#L36](./05_examples_operator/operator_file.sh#L36)
		+ [file1 -nt file2      file1 比 file2 更新#L97](./05_examples_operator/operator_file.sh#L97)
		+ [执行脚本，输出结果如下所示：#L110](./05_examples_operator/operator_file.sh#L110)
		+ [文件可读#L113](./05_examples_operator/operator_file.sh#L113)
		+ [文件可执行#L115](./05_examples_operator/operator_file.sh#L115)
		+ [文件不是个目录#L117](./05_examples_operator/operator_file.sh#L117)
		+ [文件存在#L119](./05_examples_operator/operator_file.sh#L119)
	- [`operator_math`](./05_examples_operator/operator_math.sh)
		+ [注意：条件表达式要放在方括号之间，并且要有空格，#L20](./05_examples_operator/operator_math.sh#L20)
		+ [实例#L28](./05_examples_operator/operator_math.sh#L28)
		+ [算术运算符实例如下：#L30](./05_examples_operator/operator_math.sh#L30)
		+ [执行脚本，输出结果如下所示：#L61](./05_examples_operator/operator_math.sh#L61)
		+ [注意：#L72](./05_examples_operator/operator_math.sh#L72)
		+ [乘号(*)前边必须加反斜杠(\)转义才能实现乘法运算；#L74](./05_examples_operator/operator_math.sh#L74)
		+ [在 MAC 中 shell 的 expr 语法是：$((表达式))，此处表达式中的 "*" 不需要转义符号 "\" 。#L76](./05_examples_operator/operator_math.sh#L76)
	- [`operator_overview`](./05_examples_operator/operator_overview.sh)
		+ [关系运算符#L9](./05_examples_operator/operator_overview.sh#L9)
		+ [字符串运算符#L11](./05_examples_operator/operator_overview.sh#L11)
		+ [原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。#L14](./05_examples_operator/operator_overview.sh#L14)
		+ [例如，两个数相加(注意使用的是反引号 ` 而不是单引号 ')：#L19](./05_examples_operator/operator_overview.sh#L19)
		+ [运行实例 »#L24](./05_examples_operator/operator_overview.sh#L24)
		+ [执行脚本，输出结果如下所示：#L26](./05_examples_operator/operator_overview.sh#L26)
		+ [两数之和为 : 4#L28](./05_examples_operator/operator_overview.sh#L28)
		+ [两点注意：#L31](./05_examples_operator/operator_overview.sh#L31)
		+ [表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2，这与我们熟悉的大多数编程语言不一样。#L34](./05_examples_operator/operator_overview.sh#L34)
	- [`operator_relation`](./05_examples_operator/operator_relation.sh)
		+ [下表列出了常用的关系运算符，假定变量 a 为 10，变量 b 为 20：#L9](./05_examples_operator/operator_relation.sh#L9)
		+ [运算符		说明														举例#L11](./05_examples_operator/operator_relation.sh#L11)
		+ [EQ 就是 EQUAL等于#L20](./05_examples_operator/operator_relation.sh#L20)
		+ [GT 就是 GREATER THAN大于#L22](./05_examples_operator/operator_relation.sh#L22)
		+ [GE 就是 GREATER THAN OR EQUAL 大于等于#L24](./05_examples_operator/operator_relation.sh#L24)
		+ [也可以使用 ((expression1 OP expression2))，OP 可以为 >、<、>=、<=、==、!=。#L28](./05_examples_operator/operator_relation.sh#L28)
		+ [实例#L40](./05_examples_operator/operator_relation.sh#L40)
		+ [关系运算符实例如下：#L42](./05_examples_operator/operator_relation.sh#L42)
		+ [执行脚本，输出结果如下所示：#L125](./05_examples_operator/operator_relation.sh#L125)
	- [`operator_string`](./05_examples_operator/operator_string.sh)
		+ [运算符				说明										举例#L9](./05_examples_operator/operator_string.sh#L9)
		+ [实例#L22](./05_examples_operator/operator_string.sh#L22)
		+ [字符串运算符实例如下：#L24](./05_examples_operator/operator_string.sh#L24)
		+ [执行脚本，输出结果如下所示：#L68](./05_examples_operator/operator_string.sh#L68)
		+ [abc : 字符串不为空#L75](./05_examples_operator/operator_string.sh#L75)
+ [**06_examples_output**](./06_examples_output)
	- [`echo_output`](./06_examples_output/echo_output.sh)
		+ [命令格式：#L9](./06_examples_output/echo_output.sh#L9)
		+ [echo -e 开启转义#L12](./06_examples_output/echo_output.sh#L12)
		+ [可以使用echo实现更复杂的输出格式控制#L15](./06_examples_output/echo_output.sh#L15)
		+ [echo输出的字符串总结#L18](./06_examples_output/echo_output.sh#L18)
		+ [能否引用变量  |  能否引用转移符  	|  能否引用文本格式符(如：换行符、制表符)#L20](./06_examples_output/echo_output.sh#L20)
		+ [单引号  |           否           |             否             |                             否#L22](./06_examples_output/echo_output.sh#L22)
		+ [无引号  |           能           |             能             |                             否#L24](./06_examples_output/echo_output.sh#L24)
		+ [这里的双引号完全可以省略，以下命令与上面实例效果一致：#L35](./06_examples_output/echo_output.sh#L35)
		+ [2.显示转义字符#L40](./06_examples_output/echo_output.sh#L40)
		+ [结果将是:#L44](./06_examples_output/echo_output.sh#L44)
		+ [同样，双引号也可以省略#L46](./06_examples_output/echo_output.sh#L46)
		+ [3.显示变量#L50](./06_examples_output/echo_output.sh#L50)
		+ [read 命令从标准输入中读取一行,并把输入行的每个字段的值指定给 shell 变量#L52](./06_examples_output/echo_output.sh#L52)
		+ [以上代码保存为 test.sh，name 接收标准输入的变量，结果将是:#L57](./06_examples_output/echo_output.sh#L57)
		+ [OK                     标准输入#L60](./06_examples_output/echo_output.sh#L60)
		+ [4.显示换行#L65](./06_examples_output/echo_output.sh#L65)
		+ [输出结果：#L70](./06_examples_output/echo_output.sh#L70)
		+ [5.显示不换行#L77](./06_examples_output/echo_output.sh#L77)
		+ [输出结果：#L83](./06_examples_output/echo_output.sh#L83)
		+ [6.显示结果定向至文件，将内容写入到文件#L88](./06_examples_output/echo_output.sh#L88)
		+ [输出结果：#L98](./06_examples_output/echo_output.sh#L98)
		+ [8.显示命令执行结果#L103](./06_examples_output/echo_output.sh#L103)
		+ [`` 可以将命令运行在 echo 中#L107](./06_examples_output/echo_output.sh#L107)
		+ [注意： 这里使用的是反引号 `, 而不是单引号 '。#L110](./06_examples_output/echo_output.sh#L110)
	- [`printfc_output`](./06_examples_output/printfc_output.sh)
		+ [\b	后退,相当于删除前一个字符#L9](./06_examples_output/printfc_output.sh#L9)
		+ [而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略#L11](./06_examples_output/printfc_output.sh#L11)
		+ [\n	换行#L13](./06_examples_output/printfc_output.sh#L13)
		+ [\t	水平制表符#L15](./06_examples_output/printfc_output.sh#L15)
		+ [\\	一个字面上的反斜杠字符#L17](./06_examples_output/printfc_output.sh#L17)
		+ [\0ddd	表示1到3位的八进制值字符#L19](./06_examples_output/printfc_output.sh#L19)
		+ [实例#L21](./06_examples_output/printfc_output.sh#L21)
		+ [www.xxx.com $                  不换行#L31](./06_examples_output/printfc_output.sh#L31)
	- [`printf_output`](./06_examples_output/printf_output.sh)
		+ [还可以制定字符串的宽度、左右对齐方式等。默认 printf 不会像 echo 自动添加换行符，我们可以手动添加 \n。#L9](./06_examples_output/printf_output.sh#L9)
		+ [参数说明：#L13](./06_examples_output/printf_output.sh#L13)
		+ [如：其中最后一个参数是 "def"，%c 自动截取字符串的第一个字符作为结果输出。#L25](./06_examples_output/printf_output.sh#L25)
		+ [实例如下：#L31](./06_examples_output/printf_output.sh#L31)
		+ [接下来,我来用一个脚本来体现printf的强大功能：#L40](./06_examples_output/printf_output.sh#L40)
		+ [执行脚本，输出结果如下所示：#L49](./06_examples_output/printf_output.sh#L49)
		+ [姓名     性别   体重kg#L52](./06_examples_output/printf_output.sh#L52)
		+ [杨过     男      48.65#L54](./06_examples_output/printf_output.sh#L54)
		+ [%s %c %d %f都是格式替代符#L59](./06_examples_output/printf_output.sh#L59)
		+ [更多实例：#L65](./06_examples_output/printf_output.sh#L65)
		+ [format-string为双引号#L68](./06_examples_output/printf_output.sh#L68)
		+ [单引号与双引号效果一样#L71](./06_examples_output/printf_output.sh#L71)
		+ [没有引号也可以输出#L74](./06_examples_output/printf_output.sh#L74)
		+ [格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用#L77](./06_examples_output/printf_output.sh#L77)
		+ [如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替#L84](./06_examples_output/printf_output.sh#L84)
		+ [执行脚本，输出结果如下所示：#L88](./06_examples_output/printf_output.sh#L88)
+ [**07_examples_test**](./07_examples_test)
	- [`test_file`](./07_examples_test/test_file.sh)
		+ [参数							说明#L9](./07_examples_test/test_file.sh#L9)
		+ [实例演示：#L24](./07_examples_test/test_file.sh#L24)
		+ [另外，Shell还提供了与( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，#L75](./07_examples_test/test_file.sh#L75)
		+ [输出结果：#L88](./07_examples_test/test_file.sh#L88)
		+ [至少有一个文件存在!#L90](./07_examples_test/test_file.sh#L90)
	- [`test_math`](./07_examples_test/test_math.sh)
		+ [参数				说明#L10](./07_examples_test/test_math.sh#L10)
		+ [实例演示：#L24](./07_examples_test/test_math.sh#L24)
		+ [输出结果：#L59](./07_examples_test/test_math.sh#L59)
		+ [两个数相等！#L61](./07_examples_test/test_math.sh#L61)
		+ [代码中的 [] 执行基本的算数运算，如：#L65](./07_examples_test/test_math.sh#L65)
	- [`test_string`](./07_examples_test/test_string.sh)
		+ [参数					说明#L10](./07_examples_test/test_string.sh#L10)
		+ [!=			不相等				则为真#L13](./07_examples_test/test_string.sh#L13)
		+ [实例演示：#L21](./07_examples_test/test_string.sh#L21)
		+ [输出结果：#L46](./07_examples_test/test_string.sh#L46)
		+ [两个字符串不相等!#L48](./07_examples_test/test_string.sh#L48)
+ [**08_examples_process**](./08_examples_process)
	- [`each`](./08_examples_process/each.sh)
	- [`process_case`](./08_examples_process/process_case.sh)
		+ [模式1)#L12](./08_examples_process/process_case.sh#L12)
		+ [模式2)#L18](./08_examples_process/process_case.sh#L18)
		+ [取值可以为变量或常数。匹配发现取值符合某一模式后，其间所有命令开始执行直至 ;;。#L28](./08_examples_process/process_case.sh#L28)
		+ [取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。#L30](./08_examples_process/process_case.sh#L30)
		+ [它需要一个esac（就是case反过来）作为结束标记，#L38](./08_examples_process/process_case.sh#L38)
		+ [下面的脚本提示输入1到4，与每一种模式进行匹配：#L41](./08_examples_process/process_case.sh#L41)
		+ [输入不同的内容，会有不同的结果，例如：#L67](./08_examples_process/process_case.sh#L67)
		+ [输入 1 到 4 之间的数字:#L69](./08_examples_process/process_case.sh#L69)
		+ [你选择了 3#L72](./08_examples_process/process_case.sh#L72)
	- [`process_for`](./08_examples_process/process_for.sh)
		+ [写成一行：#L29](./08_examples_process/process_for.sh#L29)
		+ [当变量值在列表里，for循环即执行一次所有命令，使用变量名获取列表中的当前取值。#L33](./08_examples_process/process_for.sh#L33)
		+ [例如，顺序输出当前列表中的数字：#L43](./08_examples_process/process_for.sh#L43)
		+ [输出结果：#L51](./08_examples_process/process_for.sh#L51)
		+ [顺序输出字符串中的字符：#L60](./08_examples_process/process_for.sh#L60)
		+ [每个空格代表一个元素#L68](./08_examples_process/process_for.sh#L68)
		+ [输出结果：#L74](./08_examples_process/process_for.sh#L74)
		+ [执行结果：#L89](./08_examples_process/process_for.sh#L89)
		+ [这是第1次调用#L91](./08_examples_process/process_for.sh#L91)
		+ [这是第3次调用#L93](./08_examples_process/process_for.sh#L93)
		+ [这是第5次调用#L95](./08_examples_process/process_for.sh#L95)
	- [`process_ifelse`](./08_examples_process/process_ifelse.sh)
		+ [写成一行（适用于终端命令提示符）：#L23](./08_examples_process/process_ifelse.sh#L23)
		+ [以下实例判断两个变量是否相等：#L62](./08_examples_process/process_ifelse.sh#L62)
		+ [输出结果：#L82](./08_examples_process/process_ifelse.sh#L82)
		+ [输出结果：#L98](./08_examples_process/process_ifelse.sh#L98)
	- [`process_loop_jump`](./08_examples_process/process_loop_jump.sh)
		+ [break命令#L10](./08_examples_process/process_loop_jump.sh#L10)
		+ [下面的例子中，脚本进入死循环直至用户输入数字大于5。#L15](./08_examples_process/process_loop_jump.sh#L15)
		+ [执行以上代码，输出结果为：#L34](./08_examples_process/process_loop_jump.sh#L34)
		+ [输入 1 到 5 之间的数字:3#L37](./08_examples_process/process_loop_jump.sh#L37)
		+ [输入 1 到 5 之间的数字:7#L39](./08_examples_process/process_loop_jump.sh#L39)
		+ [对上面的例子进行修改：#L49](./08_examples_process/process_loop_jump.sh#L49)
		+ [运行代码发现，当输入大于5的数字时，该例中的循环不会结束，语句 echo "游戏结束" 永远不会被执行。#L69](./08_examples_process/process_loop_jump.sh#L69)
		+ [它需要一个esac（就是case反过来）作为结束标记，#L75](./08_examples_process/process_loop_jump.sh#L75)
	- [`process_select`](./08_examples_process/process_select.sh)
		+ [示例1：选择你的操作系统。#L13](./08_examples_process/process_select.sh#L13)
		+ [示例2：RANDOM 随机数#L28](./08_examples_process/process_select.sh#L28)
		+ [IFS 是内部域分隔符，设置变量 pocket的分隔符#L45](./08_examples_process/process_select.sh#L45)
		+ [设置回原来的值#L49](./08_examples_process/process_select.sh#L49)
	- [`process_unlimit_loop`](./08_examples_process/process_unlimit_loop.sh)
		+ [无限循环语法格式：#L11](./08_examples_process/process_unlimit_loop.sh#L11)
		+ [或者#L31](./08_examples_process/process_unlimit_loop.sh#L31)
		+ [或者#L48](./08_examples_process/process_unlimit_loop.sh#L48)
	- [`process_until`](./08_examples_process/process_until.sh)
		+ [一般 while 循环优于 until 循环，但在某些时候—也只是极少数情况下，until 循环更加有用。#L9](./08_examples_process/process_until.sh#L9)
		+ [以下实例我们使用 until 命令来输出 0 ~ 9 的数字：#L23](./08_examples_process/process_until.sh#L23)
		+ [运行结果：#L35](./08_examples_process/process_until.sh#L35)
	- [`process_while`](./08_examples_process/process_while.sh)
		+ [以下是一个基本的while循环，测试条件是：#L20](./08_examples_process/process_while.sh#L20)
		+ [运行上述脚本，返回数字1到5，然后终止。#L23](./08_examples_process/process_while.sh#L23)
		+ [运行脚本，输出：#L34](./08_examples_process/process_while.sh#L34)
		+ [代码中使用了 Bash let 命令，它用于执行一个或多个表达式，#L43](./08_examples_process/process_while.sh#L43)
		+ [输入信息被设置为变量FILM，按<Ctrl-D>结束循环。#L54](./08_examples_process/process_while.sh#L54)
		+ [运行脚本，输出类似下面：#L65](./08_examples_process/process_while.sh#L65)
		+ [按下 <CTRL-D> 退出#L68](./08_examples_process/process_while.sh#L68)
		+ [是的！baidu 是一个好网站#L70](./08_examples_process/process_while.sh#L70)
+ [**09_examples_function**](./09_examples_function)
	- [`func_param`](./09_examples_function/func_param.sh)
		+ [例如，$1表示第一个参数，$2表示第二个参数...#L9](./09_examples_function/func_param.sh#L9)
		+ [另外，还有几个特殊字符用来处理参数：#L13](./09_examples_function/func_param.sh#L13)
		+ [参数处理		说明#L15](./09_examples_function/func_param.sh#L15)
		+ [$		传递到脚本的参数个数#L17](./09_examples_function/func_param.sh#L17)
		+ [$$		脚本运行的当前进程ID号#L19](./09_examples_function/func_param.sh#L19)
		+ [带参数的函数示例：#L27](./09_examples_function/func_param.sh#L27)
		+ [输出结果：#L41](./09_examples_function/func_param.sh#L41)
		+ [第一个参数为 1 !#L43](./09_examples_function/func_param.sh#L43)
		+ [第十个参数为 10 !#L45](./09_examples_function/func_param.sh#L45)
		+ [第十一个参数为 73 !#L47](./09_examples_function/func_param.sh#L47)
		+ [作为一个字符串输出所有参数 1 2 3 4 5 6 7 8 9 34 73 !#L49](./09_examples_function/func_param.sh#L49)
		+ [注意，$10 不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数。#L52](./09_examples_function/func_param.sh#L52)
	- [`func_started`](./09_examples_function/func_started.sh)
		+ [说明：#L18](./09_examples_function/func_started.sh#L18)
		+ [下面的例子定义了一个函数并进行调用：#L25](./09_examples_function/func_started.sh#L25)
		+ [输出结果：#L36](./09_examples_function/func_started.sh#L36)
		+ [这是我的第一个 shell 函数!#L40](./09_examples_function/func_started.sh#L40)
		+ [下面定义一个带有return语句的函数：#L47](./09_examples_function/func_started.sh#L47)
		+ [输出类似下面：#L66](./09_examples_function/func_started.sh#L66)
		+ [这个函数会对输入的两个数字进行相加运算...#L69](./09_examples_function/func_started.sh#L69)
		+ [输入第二个数字:#L72](./09_examples_function/func_started.sh#L72)
		+ [两个数字分别为 1 和 2 !#L74](./09_examples_function/func_started.sh#L74)
		+ [函数返回值在调用该函数后通过 $? 来获得。#L79](./09_examples_function/func_started.sh#L79)
		+ [注意：所有函数在使用前必须定义。#L81](./09_examples_function/func_started.sh#L81)
		+ [调用函数仅使用其函数名即可。#L83](./09_examples_function/func_started.sh#L83)
+ [**10_examples_file**](./10_examples_file)
	- [`file_dev_null`](./10_examples_file/file_dev_null.sh)
		+ [但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果。#L13](./10_examples_file/file_dev_null.sh#L13)
		+ [如果希望屏蔽 stdout 和 stderr，可以这样写：#L19](./10_examples_file/file_dev_null.sh#L19)
		+ [注意：0 是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。#L22](./10_examples_file/file_dev_null.sh#L22)
	- [`file_eof`](./10_examples_file/file_eof.sh)
		+ [它的作用是将两个 delimiter 之间的内容(document) 作为输入传递给 command。#L14](./10_examples_file/file_eof.sh#L14)
		+ [注意：#L17](./10_examples_file/file_eof.sh#L17)
		+ [结尾的delimiter 一定要顶格写，前面不能有任何字符，后面也不能有任何字符，包括空格和 tab 缩进。#L19](./10_examples_file/file_eof.sh#L19)
		+ [实例#L27](./10_examples_file/file_eof.sh#L27)
		+ [在命令行中通过 wc -l 命令计算 Here Document 的行数：#L29](./10_examples_file/file_eof.sh#L29)
		+ [3           输出结果为 3 行#L38](./10_examples_file/file_eof.sh#L38)
		+ [我们也可以将 Here Document 用在脚本中，例如：#L46](./10_examples_file/file_eof.sh#L46)
		+ [执行以上脚本，输出结果：#L57](./10_examples_file/file_eof.sh#L57)
	- [`file_help`](./10_examples_file/file_help.sh)
		+ [实例#L14](./10_examples_file/file_help.sh#L14)
	- [`file_stdin`](./10_examples_file/file_stdin.sh)
		+ [这样，本来需要从键盘获取输入的命令会转移到文件读取内容。#L9](./10_examples_file/file_stdin.sh#L9)
		+ [注意：输出重定向是大于号(>)，输入重定向是小于号(<)。#L11](./10_examples_file/file_stdin.sh#L11)
		+ [实例#L17](./10_examples_file/file_stdin.sh#L17)
		+ [接着以上实例，我们需要统计 users 文件的行数，执行以下命令：#L19](./10_examples_file/file_stdin.sh#L19)
		+ [也可以将输入重定向到 users 文件：#L23](./10_examples_file/file_stdin.sh#L23)
		+ [注意：上面两个例子的结果不同：#L27](./10_examples_file/file_stdin.sh#L27)
		+ [第二个不会，因为它仅仅知道从标准输入读取内容。#L29](./10_examples_file/file_stdin.sh#L29)
		+ [同时替换输入和输出，执行command1，从文件infile读取内容，然后将输出写入到outfile中。#L35](./10_examples_file/file_stdin.sh#L35)
		+ [如果希望 stderr 重定向到 file，可以这样写：#L44](./10_examples_file/file_stdin.sh#L44)
		+ [如果希望 stderr 追加到 file 文件末尾，可以这样写：#L47](./10_examples_file/file_stdin.sh#L47)
		+ [如果希望将 stdout 和 stderr 合并后重定向到 file，可以这样写：#L52](./10_examples_file/file_stdin.sh#L52)
		+ [或者#L55](./10_examples_file/file_stdin.sh#L55)
		+ [如果希望对 stdin 和 stdout 都重定向，可以这样写：#L59](./10_examples_file/file_stdin.sh#L59)
		+ [扩展阅读#L71](./10_examples_file/file_stdin.sh#L71)
		+ [这里的&没有固定的意思#L76](./10_examples_file/file_stdin.sh#L76)
		+ [内置的文件描述符如下：#L79](./10_examples_file/file_stdin.sh#L79)
		+ [换言之 2>1 代表将stderr重定向到当前路径下文件名为1的regular file中，#L86](./10_examples_file/file_stdin.sh#L86)
		+ [这个文件就是stdout在file system中的映射#L88](./10_examples_file/file_stdin.sh#L88)
		+ [而&>file是一种特殊的用法，也可以写成>&file，二者的意思完全相同，都等价于>file 2>&1#L91](./10_examples_file/file_stdin.sh#L91)
		+ [顺序问题：#L96](./10_examples_file/file_stdin.sh#L96)
		+ [我想问为什么不能调下顺序,比如这样#L99](./10_examples_file/file_stdin.sh#L99)
		+ [这个是从左到右有顺序的#L102](./10_examples_file/file_stdin.sh#L102)
		+ [第一种#L104](./10_examples_file/file_stdin.sh#L104)
		+ [先将要输出到stdout的内容重定向到文件，此时文件list就是这个程序的stdout，再将stderr重定向到stdout，也就是文件list#L106](./10_examples_file/file_stdin.sh#L106)
		+ [第二种#L109](./10_examples_file/file_stdin.sh#L109)
		+ [先将要输出到stderr的内容重定向到stdout，此时会产生一个stdout的拷贝，作为程序的stderr，#L112](./10_examples_file/file_stdin.sh#L112)
		+ [因此第二步重定向stdout，对stdout的拷贝不产生任何影响#L114](./10_examples_file/file_stdin.sh#L114)
	- [`file_stdout`](./10_examples_file/file_stdout.sh)
		+ [重定向命令列表如下：#L11](./10_examples_file/file_stdout.sh#L11)
		+ [命令					说明#L14](./10_examples_file/file_stdout.sh#L14)
		+ [需要注意的是文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。#L28](./10_examples_file/file_stdout.sh#L28)
		+ [重定向深入讲解#L30](./10_examples_file/file_stdout.sh#L30)
		+ [一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：#L32](./10_examples_file/file_stdout.sh#L32)
		+ [标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。#L34](./10_examples_file/file_stdout.sh#L34)
		+ [标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。#L36](./10_examples_file/file_stdout.sh#L36)
		+ [输出重定向#L43](./10_examples_file/file_stdout.sh#L43)
		+ [重定向一般通过在命令间插入特定的符号来实现。特别的，这些符号的语法如下所示:#L45](./10_examples_file/file_stdout.sh#L45)
		+ [上面这个命令执行command1然后将输出的内容存入file1。#L48](./10_examples_file/file_stdout.sh#L48)
		+ [注意：任何file1内的已经存在的内容将被新内容替代。如果要将新内容添加在文件末尾，请使用>>操作符。#L50](./10_examples_file/file_stdout.sh#L50)
		+ [实例#L55](./10_examples_file/file_stdout.sh#L55)
		+ [执行下面的 who 命令，它将命令的完整的输出重定向在用户文件中(users):#L57](./10_examples_file/file_stdout.sh#L57)
		+ [执行后，并没有在终端输出信息，这是因为输出已被从默认的标准输出设备（终端）重定向到指定的文件。#L61](./10_examples_file/file_stdout.sh#L61)
		+ [你可以使用 cat 命令查看文件内容：#L64](./10_examples_file/file_stdout.sh#L64)
		+ [输出重定向会覆盖文件内容，请看下面的例子：#L72](./10_examples_file/file_stdout.sh#L72)
		+ [如果不希望文件内容被覆盖，可以使用 >> 追加到文件末尾，例如：#L79](./10_examples_file/file_stdout.sh#L79)
+ [**11_examples_import**](./11_examples_import)
	- [`import_file`](./11_examples_import/import_file.sh)
		+ [注意点号(.)和文件名中间有一空格#L11](./11_examples_import/import_file.sh#L11)
		+ [或#L13](./11_examples_import/import_file.sh#L13)
		+ [实例#L19](./11_examples_import/import_file.sh#L19)
		+ [创建两个 shell 脚本文件。#L22](./11_examples_import/import_file.sh#L22)
		+ [使用  “.” 号来引用 test1.sh 文件#L30](./11_examples_import/import_file.sh#L30)
		+ [或者使用以下包含文件代码#L33](./11_examples_import/import_file.sh#L33)
		+ [接下来，我们为 test2.sh 添加可执行权限并执行：#L38](./11_examples_import/import_file.sh#L38)
		+ [官网地址：http://www.runoob.com#L42](./11_examples_import/import_file.sh#L42)
	- [`test1`](./11_examples_import/test1.sh)
+ [**12_examples_debug**](./12_examples_debug)
	- [`shell_debug`](./12_examples_debug/shell_debug.sh)
		+ [启用#L10](./12_examples_debug/shell_debug.sh#L10)
		+ [禁用#L14](./12_examples_debug/shell_debug.sh#L14)
		+ [shell —— debug 脚本调试#L18](./12_examples_debug/shell_debug.sh#L18)
		+ [一个好的习惯是在脚本文件开头这样写，这会使它能够检测一些错误，并在错误发生时中断程序并输出信息#L30](./12_examples_debug/shell_debug.sh#L30)
		+ [如果管道中的任何命令失败，则将使用该返回码作为整个管道的返回码 (echo $?)。#L35](./12_examples_debug/shell_debug.sh#L35)
		+ [示例1：检查脚本的语法错误#L43](./12_examples_debug/shell_debug.sh#L43)
		+ [示例2：执行脚本并输出脚本#L53](./12_examples_debug/shell_debug.sh#L53)
		+ [示例3：在命令行处理之后输出命令#L65](./12_examples_debug/shell_debug.sh#L65)
		+ [示例：期望具有非零退出状态的命令#L76](./12_examples_debug/shell_debug.sh#L76)
		+ [当你想运行一个失败的命令，或者你知道有一个非零的退出代码时会发生什么？#L78](./12_examples_debug/shell_debug.sh#L78)
		+ [在严格模式下，下一行中止并出现错误：#L82](./12_examples_debug/shell_debug.sh#L82)
		+ [但是下面的方式将更好：#L85](./12_examples_debug/shell_debug.sh#L85)
		+ [示例：知道一个命令的返回值，即使该返回值不为零，该怎么办呢？#L95](./12_examples_debug/shell_debug.sh#L95)
		+ [当一行或多行匹配时，grep的返回码为0;#L103](./12_examples_debug/shell_debug.sh#L103)
		+ [这种模式让我们区分它们。#L105](./12_examples_debug/shell_debug.sh#L105)
+ [**13_examples_settings**](./13_examples_settings)
	- [`ifs_test`](./13_examples_settings/ifs_test.sh)
		+ [示例：如果将此调用为#L13](./13_examples_settings/ifs_test.sh#L13)
		+ [然后使用默认的IFS值，则第三个参数将被错误解析为两个单独的文件名为“My”和“Resume.doc”。#L15](./13_examples_settings/ifs_test.sh#L15)
		+ [将IFS设置为$'\n\t'意味着单词拆分只会发生在换行符和制表符中。#L18](./13_examples_settings/ifs_test.sh#L18)
	- [`settings_ifs`](./13_examples_settings/settings_ifs.sh)
		+ [设置IFS —— 设置分词的方式#L11](./13_examples_settings/settings_ifs.sh#L11)
		+ [设置默认是分词分割规则#L13](./13_examples_settings/settings_ifs.sh#L13)
		+ [示例：使用空格分词，items被分割成3个词#L20](./13_examples_settings/settings_ifs.sh#L20)
		+ [示例：使用换行分词，items被认为是一个单词#L38](./13_examples_settings/settings_ifs.sh#L38)
		+ [示例：数组设置IFS分词或默认情况效果都是一样的#L54](./13_examples_settings/settings_ifs.sh#L54)
+ [**14_examples_commons**](./14_examples_commons)
	- [`check-args`](./14_examples_commons/check-args.sh)
		+ [在严格模式下，您需要将此用于所有位置参数引用#L11](./14_examples_commons/check-args.sh#L11)
	- [`force-clean`](./14_examples_commons/force-clean.sh)
		+ [clean —— 在脚本退出的时候强制清理资源#L11](./14_examples_commons/force-clean.sh#L11)
		+ [定义了一个执行清理或释放资源的bash函数，然后在退出时注册要自动调用的函数。#L13](./14_examples_commons/force-clean.sh#L13)
		+ [示例：以下是如何使用退出时来强大地清理临时目录：#L20](./14_examples_commons/force-clean.sh#L20)
		+ [现在脚本可以在“$scratch”目录中写入文件。#L22](./14_examples_commons/force-clean.sh#L22)
		+ [生成一个临时目录#L25](./14_examples_commons/force-clean.sh#L25)
	- [`strong-bash`](./14_examples_commons/strong-bash.sh)
		+ [强壮健康的bash脚本应该是怎么样的？#L11](./14_examples_commons/strong-bash.sh#L11)
		+ [1、提供--help标记#L13](./14_examples_commons/strong-bash.sh#L13)
		+ [3、独立于当前工作目录#L15](./14_examples_commons/strong-bash.sh#L15)
		+ [5、打印对系统执行的所有操作#L17](./14_examples_commons/strong-bash.sh#L17)
		+ [7、重新开启显示#L19](./14_examples_commons/strong-bash.sh#L19)
		+ [9、用颜色编码输出#L21](./14_examples_commons/strong-bash.sh#L21)
		+ [11、自己执行清理工作#L23](./14_examples_commons/strong-bash.sh#L23)
		+ [13、在结束时打印一个新行#L25](./14_examples_commons/strong-bash.sh#L25)
		+ [示例：提供 --help 标记#L32](./14_examples_commons/strong-bash.sh#L32)
		+ [提供help选项，为脚本提供帮助文档，也方便在日后使用或修改文本作为依据#L34](./14_examples_commons/strong-bash.sh#L34)
		+ [强壮的bash脚本...#L49](./14_examples_commons/strong-bash.sh#L49)
		+ [示例：检查所有命令的可用性#L54](./14_examples_commons/strong-bash.sh#L54)
		+ [检查命令的可用性，在不可用的情况下，给予友好提示#L56](./14_examples_commons/strong-bash.sh#L56)
		+ [示例：独立于当前工作目录#L79](./14_examples_commons/strong-bash.sh#L79)
		+ [提供独立的工作目录，能让脚本在任何地方运行，在脚本中坚持使用“绝对路径”#L81](./14_examples_commons/strong-bash.sh#L81)
		+ [可以使用dirname $0引用脚本的当前路径：#L83](./14_examples_commons/strong-bash.sh#L83)
		+ [示例：如何读取输入：环境变量 vs. 标记#L98](./14_examples_commons/strong-bash.sh#L98)
		+ [脚本接收参数的方式有3种，环境变量、选项标记、动态输入(read)#L100](./14_examples_commons/strong-bash.sh#L100)
		+ [而对于可能触发脚本不同流程的值，可以使用脚本参数。#L102](./14_examples_commons/strong-bash.sh#L102)
		+ [如果参数较多，可以将固定的参数从环境变量读取，变化频繁的使用参数读取#L104](./14_examples_commons/strong-bash.sh#L104)
		+ [不影响脚本行为的变量可能是访问令牌和 ID、路径等配置#L107](./14_examples_commons/strong-bash.sh#L107)
		+ [运行脚本读取 变量 ${ACCESS_TOKEN}#L110](./14_examples_commons/strong-bash.sh#L110)
		+ [或者 通过临时变量的形式#L113](./14_examples_commons/strong-bash.sh#L113)
		+ [对于业务流程上的参数，通过标记的形式读取#L117](./14_examples_commons/strong-bash.sh#L117)
		+ [或者 动态变量参数#L121](./14_examples_commons/strong-bash.sh#L121)
		+ [示例：打印对系统执行的所有操作，输出操作日志#L133](./14_examples_commons/strong-bash.sh#L133)
		+ [脚本通常会对系统执行有状态的更改。不过，由于我们不知道用户何时会向发送SIGINT，#L135](./14_examples_commons/strong-bash.sh#L135)
		+ [这样用户就可以在不去查看脚本的情况下回溯这些步骤#L137](./14_examples_commons/strong-bash.sh#L137)
		+ [对于没有输出日志的脚本可以试试以下方式运行：#L139](./14_examples_commons/strong-bash.sh#L139)
		+ [将会在命令行处理之后输出命令#L142](./14_examples_commons/strong-bash.sh#L142)
		+ [示例：在必要时提供 --silent 选项#L164](./14_examples_commons/strong-bash.sh#L164)
		+ [有些脚本是为了将其输出传给其他脚本。虽说脚本都应该能够单独运行，#L166](./14_examples_commons/strong-bash.sh#L166)
		+ [可以利用stty -echo来实现--silent标记：#L168](./14_examples_commons/strong-bash.sh#L168)
		+ [示例：重新开启显示#L193](./14_examples_commons/strong-bash.sh#L193)
		+ [在使用stty -echo关闭脚本显示之后，如果发生致命错误，脚本将终止，#L195](./14_examples_commons/strong-bash.sh#L195)
		+ [可以使用trap来捕捉SIGINT和其他操作系统级别的信号，#L197](./14_examples_commons/strong-bash.sh#L197)
		+ [示例：用动画的方式显示进度#L222](./14_examples_commons/strong-bash.sh#L222)
		+ [有些命令需要运行很长时间，并非所有脚本都提供了进度条。#L224](./14_examples_commons/strong-bash.sh#L224)
		+ [比如在while循环中打印一些信息：#L226](./14_examples_commons/strong-bash.sh#L226)
		+ [示例：用颜色编码输出#L252](./14_examples_commons/strong-bash.sh#L252)
		+ [这样就可以知道哪个输出来自哪个脚本或二进制文件，查找日志就更加方便。#L254](./14_examples_commons/strong-bash.sh#L254)
		+ [理想情况下，脚本应该输出白色（默认的，前台进程），#L256](./14_examples_commons/strong-bash.sh#L256)
		+ [使用绿色表示成功，红色表示失败，黄色表示警告。#L258](./14_examples_commons/strong-bash.sh#L258)
		+ [示例：出现错误立即退出脚本#L281](./14_examples_commons/strong-bash.sh#L281)
		+ [相反，set +e表示不管出现任何错误继续执行脚本。#L283](./14_examples_commons/strong-bash.sh#L283)
		+ [如果脚本是有状态的（每个后续步骤都依赖前一个步骤），那么请使用set -e，#L285](./14_examples_commons/strong-bash.sh#L285)
		+ [示例：自己执行清理工作#L310](./14_examples_commons/strong-bash.sh#L310)
		+ [但这样做其实很有用，还可以省下不少时间。#L312](./14_examples_commons/strong-bash.sh#L312)
		+ [示例：在退出时使用不同的错误码#L337](./14_examples_commons/strong-bash.sh#L337)
		+ [对错误与错误码进行一对一的映射，这样有助于脚本调试。#L339](./14_examples_commons/strong-bash.sh#L339)
		+ [这样做有另一个额外的好处，就是其他脚本在调用你的脚本时，可以根据错误码来判断发生了什么错误。#L341](./14_examples_commons/strong-bash.sh#L341)
		+ [示例：在结束时打印一个新行#L363](./14_examples_commons/strong-bash.sh#L363)
		+ [问题是printf在命令结束后不会自动添加一个新行.#L365](./14_examples_commons/strong-bash.sh#L365)
+ [****](./)
	- [`comment`](.//comment.sh)
		+ [示例：#L20](.//comment.sh#L20)
		+ [示例：#L29](.//comment.sh#L29)
# .idea/inspectionProfiles 
[**.idea/inspectionProfiles**](./.idea/inspectionProfiles)
# .idea 
[**.idea**](./.idea)
# 01_example_started 
[**01_example_started**](./01_example_started)
## hello_world 
[`hello_world`](./01_example_started/hello_world.sh)

```python 
# ==========================================================================
# 运行 Shell 脚本有两种方法：
# ==========================================================================

# 1、作为可执行程序
# --------------------------------------------------------------------------
# 将上面的代码保存为 hello_world.sh，并 cd 到相应目录：
#
# chmod +x ./hello_world.sh  #使脚本具有执行权限
# ./hello_world.sh  #执行脚本
#
# --------------------------------------------------------------------------
# 注意，一定要写成 ./hello_world.sh，而不是 hello_world.sh，运行其它二进制的程序也一样，
# 直接写 hello_world.sh，linux 系统会去 PATH 里寻找有没有叫 hello_world.sh 的，而只有 /bin, /sbin, /usr/bin，/usr/sbin 等在 PATH 里，
# 你的当前目录通常不在 PATH 里，所以写成 hello_world.sh 是会找不到命令的，要用 ./hello_world.sh 告诉系统说，就在当前目录找。
# --------------------------------------------------------------------------


# 2、作为解释器参数
# --------------------------------------------------------------------------
# 这种运行方式是，直接运行解释器，其参数就是 shell 脚本的文件名，如：

# /bin/sh hello_world.sh
# /bin/php hello_world.php

# sh hello_world.sh
# bash hello_world.sh
# --------------------------------------------------------------------------
# 这种方式运行的脚本，不需要在第一行指定解释器信息，写了也没用。
# --------------------------------------------------------------------------




# ==========================================================================
# source、sh、bash、./ 执行脚本的区别是什么？
# ==========================================================================


# 1. source命令用法：
# --------------------------------------------------------------------------
 
```
# 02_examples_variable 
[**02_examples_variable**](./02_examples_variable)
## var_assignment 
[`var_assignment`](./02_examples_variable/var_assignment.sh)

```python 
r=`expr $a + $b`
echo "result: $r"

r=`expr $a + $b + $r`
echo "result: $r"

r=$[a+b]
echo "result: $r"

let "r=a+b+a"
echo "result: $r"

:${d:= 10} # var:= 不能有空格
echo "result-d: $d"

# 变量运算赋值
# ------------------------------------------------------------------
# bash 里面可以用 (( )) 执行 C 风格的算术表达式
# ------------------------------------------------------------------

var=0
(( var += 1 )) # 这是一种，现在 var 是 1
echo "var: $var"

(( var++ ))    # 这也是一种自增，2
echo "var: $var"

(( var = var * var )) # 怎么来乘法了！var 现在是 4。
echo "var: $var"


let 'var = var / 3'   # 还是只有 bash 才能用的拓展。除法是整数除法，向 0 舍入，1。
echo "var: $var"


# $(( )) 会展开成为这个 C 表达式求值的结果。以前 bash 有个 $[ ] 一样，但是别去用。
var=$((var += 2))    # echo 出 3，var 现在是 3。
echo "var: $var"


var=$((var-1))        # 展开成 var=2，var 现在是……还用说吗，2。
 
```
## var_declare 
[`var_declare`](./02_examples_variable/var_declare.sh)

```python 
#var$temp="st1" # var=st1: 未找到命令

#####################################################################
# 变量名的命名须遵循如下规则：
#	*、变量名和等号之间不能有空格
#	1、命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
#	2、中间不能有空格，可以使用下划线（_）。
#	3、不能使用标点符号。
#	4、不能使用bash里的关键字（可用help命令查看保留关键字）。

# help

# var1 = "不能有空格"	# var1: 未找到命令
var1="success"
echo "var1: $var1"

var_2="haha"
echo "var_2:" $var_2


# 有效的 Shell 变量名示例如下：

USER="jack"
LD_LIBRARY_PATH="/tmp/lib/"
_var=2
var2=3

# 无效的变量命名：
# ?var=123
# user*name=runoob



#####################################################################
# 除了显式地直接赋值，还可以用语句给变量赋值，如：

# 将 /etc 下目录的文件名循环出来。
for file in `ls /etc`; 
	do echo $file;
done

 
```
## var_delete 
[`var_delete`](./02_examples_variable/var_delete.sh)

```python 
#
#	变量被删除后不能再次使用。
#	unset 命令不能删除只读变量。
##############################################################



# 实例
var_tmp="remove var"
unset var_tmp

echo $var_tmp

#以上实例执行将没有任何输出。
 
```
## var_readonly 
[`var_readonly`](./02_examples_variable/var_readonly.sh)

```python 
readonly myUrl

# 下面的例子尝试更改只读变量，结果报错：
myUrl="http://www.runoob.com"

# 运行脚本，结果如下：
# /bin/sh: NAME: This variable is read only.
 
```
## var_scope 
[`var_scope`](./02_examples_variable/var_scope.sh)

```python 
#	2) 环境变量 所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
#	3) shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行

 
```
## var_ternary_op 
[`var_ternary_op`](./02_examples_variable/var_ternary_op.sh)

```python 
${varname:+word}    # 如果 varname 存在而且不为 null，返回 word，否则返回 null
${varname:offset:length}    # 它返回 $varname 的子字符串，从 offset 处开始，长度为 length 
```
## var_used 
[`var_used`](./02_examples_variable/var_used.sh)

```python 

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
```
# 03_examples_data_type 
[**03_examples_data_type**](./03_examples_data_type)
## type_arrays 
[`type_arrays`](./03_examples_data_type/type_arrays.sh)

```python 
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
 
```
## type_strings 
[`type_strings`](./03_examples_data_type/type_strings.sh)

```python 
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
 
```
## type_strings_substr 
[`type_strings_substr`](./03_examples_data_type/type_strings_substr.sh)

```python 
# 	一个 # 表示从左边删除到第一个指定的字符；
#	两个 # 表示从左边删除到最后一个指定的字符。

# -------------------------------------------------------------
# 	%、%% 表示从右边开始删除。
# -------------------------------------------------------------
#	一个 % 表示从右边删除到第一个指定的字符；
#	两个 % 表示从左边删除到最后一个指定的字符。

# 删除包括了指定的字符本身。
# -------------------------------------------------------------

# 假设有变量
var=http://www.aaa.com/123.htm



# 1. # 号截取，删除左边字符(第一个字符开始)，保留右边字符。
# ==============================================================
# 其中 var 是变量名，# 号是运算符，*// 表示从左边开始删除第一个 // 号及左边的所有字符

echo ${var#*//} # 结果是 ：www.aaa.com/123.htm



# 2. ## 号截取，删除左边字符（最后一个字符开始），保留右边字符。
# ==============================================================
# #*/ 表示从左边开始删除最后（最右边）一个 / 号及左边的所有字符

echo ${var##*/} # 结果是 123.htm




# 3. %号截取，删除右边字符，保留左边字符
# ==============================================================
# %/* 表示从右边开始，删除第一个 / 号及右边的字符

echo ${var%/*} # 结果是：http://www.aaa.com


 
```
# 04_examples_args 
[**04_examples_args**](./04_examples_args)
## args_file 
[`args_file`](./04_examples_args/args_file.sh)

```python 

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
 
```
## args_input 
[`args_input`](./04_examples_args/args_input.sh)

```python 
#-----------------------------------------------------------------------


# 以下实例我们向脚本传递三个参数，并分别输出，其中 $0 为执行的文件名：

echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";

# 为脚本设置可执行权限，并执行脚本，输出结果如下所示：
#-----------------------------------------------------------------------
#	$ chmod +x args_input.sh 
#	$ ./args_input.sh 1 2 3
#-----------------------------------------------------------------------
# 输出结果
#-----------------------------------------------------------------------
# $ ./args_input.sh 1 2 3
# Shell 传递参数实例！
# 执行的文件名：./args_input.sh
# 第一个参数为：1
# 第二个参数为：2
# 第三个参数为：3 
```
## args_read 
[`args_read`](./04_examples_args/args_read.sh)

```python 
#==============================================================
#			read 命令用于获取键盘输入信息
#==============================================================


# -------------------------------------------------------------
# 它的语法形式一般是：
# 		read [-options] [variable...]
#		read: 用法: read [-ers] [-a 数组] [-d 分隔符] [-i 缓冲区文字] [-n 读取字符数] [-N 读取字符数] [-p 提示符] [-t 超时] [-u 文件描述符] [名称 ...]
# -------------------------------------------------------------

# 以下实例读取键盘输入的内容并将其赋值给shell变量，为：-p 参数由于设置提示信息：

read -p "input a val:" a    # 获取键盘输入的 a 变量数字
read -p "input b val:" b    # 获取键盘输入的 b 变量数字
r=$[a+b]                    # 计算a+b的结果 赋值给r  不能有空格
echo "result = ${r}"        # 输出显示结果 r
echo `expr $a + $b`


# 测试结果：
# -------------------------------------------------------------
# input a val:1
# input b val:2
# result = 3



# ------------------------------------------------------------------------------------
# read 命令一个一个词组地接收输入的参数，每个词组需要使用空格进行分隔；
#	如果输入的词组个数大于需要的参数个数，则多出的词组将被作为整体为最后一个参数接收。
# ------------------------------------------------------------------------------------

# 测试文件 test.sh 代码如下：
# ------------------------------------------------------------------------------------

read firstStr secondStr
echo "第一个参数:$firstStr; 第二个参数:$secondStr"

# 执行测试：
# ------------------------------------------------------------------------------------
 
```
## args_special 
[`args_special`](./04_examples_args/args_special.sh)

```python 
#				如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。
#	$$			脚本运行的当前进程ID号
#	$!			后台运行的最后一个进程的ID号
#	$@			与$*相同，但是使用时加引号，并在引号中返回每个参数。
#				如"$@"用「"」括起来的情况、以"$1" "$2" … "$n" 的形式输出所有参数。
#	$-			显示Shell使用的当前选项，与set命令功能相同。
#	$?			显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
#--------------------------------------------------------

# 运行脚本，传入参数


echo "参数个数：$#"

echo "显示所有参数：$*"
echo "显示所有参数：$@"

echo "当前进程ID：$$"
echo "最后一个进程Id：$!"

echo "当前选项：$-"
echo "最终状态：$?"


# $* 与 $@ 区别：
#--------------------------------------------------------
# 相同点：都是引用所有参数。
# 不同点：只有在双引号中体现出来。
#	非数组形式：假设在脚本运行时写了三个参数 1、2、3，，则 " * " 等价于 "1 2 3"（传递了一个参数），
#	数组的形式：而 "@" 等价于 "1" "2" "3"（传递了三个参数）。
#--------------------------------------------------------
echo "-- \$* 演示 ---"
for i in "$*"; do
    echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@"; do
    echo $i
done  
```
# 05_examples_operator 
[**05_examples_operator**](./05_examples_operator)
## operator_boolean 
[`operator_boolean`](./05_examples_operator/operator_boolean.sh)

```python 
# !			非运算，表达式为 true 则返回 false，否则返回 true。		[ ! false ] 返回 true。
# -o		或运算，有一个表达式为 true 则返回 true。				[ $a -lt 20 -o $b -gt 100 ] 返回 true。
# -a		与运算，两个表达式都为 true 才返回 true。				[ $a -lt 20 -a $b -gt 100 ] 返回 false。
#---------------------------------------------------------------------
# &&		逻辑的 AND											[[ $a -lt 100 && $b -gt 100 ]] 返回 false
# ||		逻辑的 OR											[[ $a -lt 100 || $b -gt 100 ]] 返回 true
#---------------------------------------------------------------------


#---------------------------------------------------------------------
#				实例
#---------------------------------------------------------------------
# 布尔运算符实例如下：


a=10
b=20

if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a != $b: a 等于 b"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a 小于 100 且 $b 大于 15 : 返回 true"
else
   echo "$a 小于 100 且 $b 大于 15 : 返回 false"
fi

if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a 小于 100 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 100 或 $b 大于 100 : 返回 false"
fi

if [ $a -lt 5 -o $b -gt 100 ]
then
 
```
## operator_file 
[`operator_file`](./05_examples_operator/operator_file.sh)

```python 
# 操作符			说明																		举例
#------------------------------------------------------------------------------------------------------------
# -b file	检测文件是否是块设备文件，如果是，则返回 true。								[ -b $file ] 返回 false。
# -c file	检测文件是否是字符设备文件，如果是，则返回 true。							[ -c $file ] 返回 false。
# -d file	检测文件是否是目录，如果是，则返回 true。									[ -d $file ] 返回 false。
# -f file	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。	[ -f $file ] 返回 true。

# -g file	检测文件是否设置了 SGID 位，如果是，则返回 true。							[ -g $file ] 返回 false。
# -k file	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。					[ -k $file ] 返回 false。
# -p file	检测文件是否是有名管道，如果是，则返回 true。								[ -p $file ] 返回 false。
# -u file	检测文件是否设置了 SUID 位，如果是，则返回 true。							[ -u $file ] 返回 false。

# -r file	检测文件是否可读，如果是，则返回 true。									[ -r $file ] 返回 true。
# -w file	检测文件是否可写，如果是，则返回 true。									[ -w $file ] 返回 true。
# -x file	检测文件是否可执行，如果是，则返回 true。									[ -x $file ] 返回 true。
# -s file	检测文件是否为空（文件大小是否大于0），不为空返回 true。					[ -s $file ] 返回 true。
# -e file	检测文件（包括目录）是否存在，如果是，则返回 true。							[ -e $file ] 返回 true。
#------------------------------------------------------------------------------------------------------------
# file1 -nt file2     # file1 比 file2 更新
# file1 -ot file2     # file1 比 file2 更老
#----------------------------------------------------------------------


#----------------------------------------------------------------------
# 实例
#----------------------------------------------------------------------
# 变量 file 表示文件"./operator_file.sh"，它的大小为100字节，具有 rwx 权限。下面的代码，将检测该文件的各种属性：
#----------------------------------------------------------------------

file="./operator_file.sh"


if [ -r $file ]
then
   echo "文件可读"
else
   echo "文件不可读"
fi


if [ -w $file ]
 
```
## operator_math 
[`operator_math`](./05_examples_operator/operator_math.sh)

```python 
# +				加法										`expr $a + $b` 结果为 30。
# -				减法										`expr $a - $b` 结果为 -10。
# *				乘法										`expr $a \* $b` 结果为  200。
# /				除法										`expr $b / $a` 结果为 2。
# %				取余										`expr $b % $a` 结果为 0。
# =				赋值			 							 a=$b 将把变量 b 的值赋给 a。
# ==			相等。用于比较两个数字，相同则返回 true。		[ $a == $b ] 返回 false。
# !=			不相等。用于比较两个数字，不相同则返回 true。	[ $a != $b ] 返回 true。
#------------------------------------------------------------------------
#
# 注意：条件表达式要放在方括号之间，并且要有空格，
# 例如: [$a==$b] 是错误的，必须写成 [ $a == $b ]。
#------------------------------------------------------------------------




#------------------------------------------------------------------------
# 实例
#------------------------------------------------------------------------
# 算术运算符实例如下：

a=10
b=20

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ]
 
```
## operator_overview 
[`operator_overview`](./05_examples_operator/operator_overview.sh)

```python 
#	布尔运算符
#	字符串运算符
#	文件测试运算符
#
# 原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
# expr 是一款表达式计算工具，使用它能完成表达式的求值操作。
#----------------------------------------------------------------


# 例如，两个数相加(注意使用的是反引号 ` 而不是单引号 ')：
#----------------------------------------------------------------
val=`expr 2 + 2`
echo "两数之和为 : $val"

# 运行实例 »
#----------------------------------------------------------------
#	执行脚本，输出结果如下所示：
#
# 		两数之和为 : 4
#----------------------------------------------------------------

# 两点注意：
#----------------------------------------------------------------

# 表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2，这与我们熟悉的大多数编程语言不一样。
# 完整的表达式要被 ` ` 包含，注意这个字符不是常用的单引号，在 Esc 键下边。
#---------------------------------------------------------------- 
```
## operator_relation 
[`operator_relation`](./05_examples_operator/operator_relation.sh)

```python 
#-----------------------------------------------------------------------
# 运算符		说明														举例
#-----------------------------------------------------------------------
# -eq		检测两个数是否相等，相等返回 true。					[ $a -eq $b ] 返回 false。
# -ne		检测两个数是否不相等，不相等返回 true。				[ $a -ne $b ] 返回 true。
# -gt		检测左边的数是否大于右边的，如果是，则返回 true。		[ $a -gt $b ] 返回 false。
# -lt		检测左边的数是否小于右边的，如果是，则返回 true。		[ $a -lt $b ] 返回 true。
# -ge		检测左边的数是否大于等于右边的，如果是，则返回 true。	[ $a -ge $b ] 返回 false。
# -le		检测左边的数是否小于等于右边的，如果是，则返回 true。	[ $a -le $b ] 返回 true。
#-----------------------------------------------------------------------
# EQ 就是 EQUAL等于
# NE 就是 NOT EQUAL不等于 
# GT 就是 GREATER THAN大于　 
# LT 就是 LESS THAN小于 
# GE 就是 GREATER THAN OR EQUAL 大于等于 
# LE 就是 LESS THAN OR EQUAL 小于等于
#-----------------------------------------------------------------------
# 1、进行数值比较时，可以使用 [ expression1 OP expression2 ]，OP 可以为 -gt、-lt、-ge、-le、-eq、-ne 
#	也可以使用 ((expression1 OP expression2))，OP 可以为 >、<、>=、<=、==、!=。
#	这几个关系运算符都是测试整数表达式 expression1 和 expression2 之间的大小关系。

# 2、 >、<、==、!= 也可以进行字符串比较。
# 3、进行字符串比较时，== 可以使用 = 替代。
# 4、 == 和 !=进行字符串比较时，可以使用 [ string1 OP string2 ] 或者 [[ string1 OP string2 ]] 的形式。
# 5、 > 和 < 进行字符串比较时，需要使用[[ string1 OP string2 ]] 或者 [ string1 \OP string2 ]。也就是使用 [] 时，> 和 < 需要使用反斜线转义。
#-----------------------------------------------------------------------



#-----------------------------------------------------------------------
# 实例
#-----------------------------------------------------------------------
# 关系运算符实例如下：
#-----------------------------------------------------------------------

a=10
b=20

if (($a == $b)); then
	echo "$a == $b: a = b"
else
 
```
## operator_string 
[`operator_string`](./05_examples_operator/operator_string.sh)

```python 
#----------------------------------------------------------------------------
# =			检测两个字符串是否相等，相等返回 true。		[ $a = $b ] 返回 false。
# !=		检测两个字符串是否相等，不相等返回 true。		[ $a != $b ] 返回 true。
# -z		检测字符串长度是否为0，为0返回 true。			[ -z $a ] 返回 false。
# -n		检测字符串长度是否不为0，不为0返回 true。		[ -n $a ] 返回 true。
# str		检测字符串是否为空，不为空返回 true。			[ $a ] 返回 true。
#----------------------------------------------------------------------------




#----------------------------------------------------------------------------
# 				实例
#----------------------------------------------------------------------------
# 字符串运算符实例如下：
#----------------------------------------------------------------------------

a="abc"
b="efg"

if [ $a = $b ]
then
   echo "$a = $b : a 等于 b"
else
   echo "$a = $b: a 不等于 b"
fi

if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a != $b: a 等于 b"
fi

if [ -z $a ]
then
   echo "-z $a : 字符串长度为 0"
else
   echo "-z $a : 字符串长度不为 0"
fi

 
```
# 06_examples_output 
[**06_examples_output**](./06_examples_output)
## echo_output 
[`echo_output`](./06_examples_output/echo_output.sh)

```python 
# 		echo string
#
# 	echo -e 开启转义
# 	echo -n 不换行
#
# 可以使用echo实现更复杂的输出格式控制
#---------------------------------------------------------------------

# echo输出的字符串总结
# ===================================================================
# 				能否引用变量  |  能否引用转移符  	|  能否引用文本格式符(如：换行符、制表符)

# 	单引号  |           否           |             否             |                             否
# 	双引号  |           能           |             能             |                             能
# 	无引号  |           能           |             能             |                             否                          
# ===================================================================





# 1.显示普通字符串:
#---------------------------------------------------------------------
echo "It is a test"

# 这里的双引号完全可以省略，以下命令与上面实例效果一致：
# echo It is a test



# 2.显示转义字符
#---------------------------------------------------------------------
echo "\"It is a test\""

# 结果将是:
# "It is a test"
# 同样，双引号也可以省略



# 3.显示变量
 
```
## printfc_output 
[`printfc_output`](./06_examples_output/printfc_output.sh)

```python 
# \c	抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），
#		而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
# \f	换页（formfeed）
# \n	换行
# \r	回车（Carriage return）
# \t	水平制表符
# \v	垂直制表符
# \\	一个字面上的反斜杠字符
# \ddd	表示1到3位数八进制值的字符。仅在格式字符串中有效
# \0ddd	表示1到3位的八进制值字符

# 实例
# -----------------------------------------------------------
printf "a string, no processing:<%s>\n" "A\nB"
#a string, no processing:<A\nB>

printf "a string, no processing:<%b>\n" "A\nB"
#a string, no processing:<A
#B>

printf "www.xxx.com \a"
#www.xxx.com $                  #不换行

printf "\n警告\a字符"
printf "\ngo back\b gogogo\n"
 
```
## printf_output 
[`printf_output`](./06_examples_output/printf_output.sh)

```python 
# ---------------------------------------------------------------------------------
# printf 命令的语法：
# 		printf  format-string  [arguments...]
# 参数说明：
#		format-string: 为格式控制字符串
#		arguments: 为参数列表。
# ---------------------------------------------------------------------------------
# %d %s %c %f 格式替代符详解:

# d: Decimal 十进制整数 -- 对应位置参数必须是十进制整数，否则报错！
# s: String 字符串 -- 对应位置参数必须是字符串或者字符型，否则报错！
# c: Char 字符 -- 对应位置参数必须是字符串或者字符型，否则报错！
# f: Float 浮点 -- 对应位置参数必须是数字型，否则报错！
# ---------------------------------------------------------------------------------

# 如：其中最后一个参数是 "def"，%c 自动截取字符串的第一个字符作为结果输出。
printf "%d %s %c\n" 1 "abc" "def" # 1 abc d
# ---------------------------------------------------------------------------------



# 实例如下：
# ---------------------------------------------------------------------------------

echo "Hello, Shell"		# Hello, Shell

printf "Hello, Shell\n"		# Hello, Shell



# 接下来,我来用一个脚本来体现printf的强大功能：
# ---------------------------------------------------------------------------------

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 


# 执行脚本，输出结果如下所示：
# ---------------------------------------------------------------------------------
 
```
# 07_examples_test 
[**07_examples_test**](./07_examples_test)
## test_file 
[`test_file`](./07_examples_test/test_file.sh)

```python 
# ------------------------------------------------------------------------------
# -e 文件名		如果文件存在						则为真
# -r 文件名		如果文件存在且可读				则为真
# -w 文件名		如果文件存在且可写				则为真
# -x 文件名		如果文件存在且可执行				则为真
# -s 文件名		如果文件存在且不为空				则为真
# -d 文件名		如果文件存在且为目录				则为真
# -f 文件名		如果文件存在且为普通文件			则为真
# -c 文件名		如果文件存在且为字符型特殊文件 ASCII	则为真
# -b 文件名		如果文件存在且为块特殊文件二级制		则为真
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# 实例演示：
# ------------------------------------------------------------------------------

cd /bin
if test -e ./bash
then
    echo '文件已存在!'
else
    echo '文件不存在!'
fi


if test -r ./bash; then
	echo "文件可读"
else
	echo "文件不可读"
fi	

if test -w ./bash; then
	echo "文件可写"
else
	echo "文件不可写"
fi	

if test -x ./bash; then
	echo "文件可执行"
else
 
```
## test_math 
[`test_math`](./07_examples_test/test_math.sh)

```python 
# 参数				说明
# ------------------------------------------------------------------------------
# -eq			等于			则为真
# -ne			不等于		则为真
# -gt			大于			则为真
# -ge			大于等于 		则为真
# -lt			小于			则为真
# -le			小于等于		则为真
# ------------------------------------------------------------------------------




# ------------------------------------------------------------------------------
#		实例演示：
# ------------------------------------------------------------------------------

num1=100
num2=100
if test $[num1] -eq $[num2]
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi


if test $num1 -ne $num2; then
	echo 'num1 != num2'
else
    echo 'num1 == num2'
fi

num1=100
num2=101
if test $num1 -le $num2; then
	echo 'num1 <= num2'
else
    echo 'num1 > num2'
fi

 
```
## test_string 
[`test_string`](./07_examples_test/test_string.sh)

```python 
# 参数					说明
# ------------------------------------------------------------------------------
# =				等于					则为真
# !=			不相等				则为真
# -z 字符串		字符串的长度为零		则为真
# -n 字符串		字符串的长度不为零	则为真
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# 		实例演示：
# ------------------------------------------------------------------------------

num1="www"
num2="abc"

if test $num1 = $num2; then
    echo '两个字符串相等!'
else
    echo '两个字符串不相等!'
fi

if test $num1 != $num2; then
	echo "两个字符串不等"
fi	

str1=""
if test -z $str1; then
	echo "空字符串"
fi

if test -n $num2; then
	echo "非空字符串"
fi		

#	输出结果：
# ------------------------------------------------------------------------------
# 两个字符串不相等! 
```
# 08_examples_process 
[**08_examples_process**](./08_examples_process)
## each 
[`each`](./08_examples_process/each.sh)

```python 
echo "-------::::WHILE循环输出 使用 let i++ 自增:::::---------"
j=0
while [ $j -lt ${#my_arry[@]} ]
do
  echo ${my_arry[$j]}
  let j++
done

echo "--------:::WHILE循环输出 使用 let  "n++ "自增: 多了双引号，其实不用也可以:::---------"
n=0
while [ $n -lt ${#my_arry[@]} ]
do
  echo ${my_arry[$n]}
  let "n++"
done

echo "---------::::WHILE循环输出 使用 let m+=1 自增,这种写法其他编程中也常用::::----------"
m=0
while [ $m -lt ${#my_arry[@]} ]
do
  echo ${my_arry[$m]}
  let m+=1
done

echo "-------::WHILE循环输出 使用 a=$[$a+1] 自增,个人觉得这种写法比较麻烦::::----------"
a=0
while [ $a -lt ${#my_arry[@]} ]
do
 echo ${my_arry[$a]}
 a=$[$a+1]
done

read status 
```
## process_case 
[`process_case`](./08_examples_process/process_case.sh)

```python 

# case 值 in
# 模式1)
#    command1
#    command2
#    ...
#    commandN
#    ;;
# 模式2)
#    command1
#    command2
#    ...
#    commandN
#   ;;
# esac
# -----------------------------------------------------------------------------

# case工作方式如上所示。取值后面必须为单词in，每一模式必须以右括号结束。
# 取值可以为变量或常数。匹配发现取值符合某一模式后，其间所有命令开始执行直至 ;;。

# 取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。
# 如果无一匹配模式，使用星号 * 捕获该值，再执行后面的命令。
# -----------------------------------------------------------------------------

# ----------------------------------------------------------------------
# 	esac
# ----------------------------------------------------------------------
# case的语法和Java family语言差别很大，
# 它需要一个esac（就是case反过来）作为结束标记，
# 每个case分支用右圆括号，用两个分号表示break。

# 下面的脚本提示输入1到4，与每一种模式进行匹配：
# -----------------------------------------------------------------------------

echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  
    	echo '你选择了 1'
    ;;
 
```
## process_for 
[`process_for`](./08_examples_process/process_for.sh)

```python 


# for循环一般格式为：
# ----------------------------------------------------------------------
# for var in item1 item2 ... itemN
# do
#    command1
#    command2
#    ...
#    commandN
# done
# ----------------------------------------------------------------------
# for((assignment;condition:next));do
#    command_1;
#    command_2;
#    commond_..;
# done;
# ----------------------------------------------------------------------

# 写成一行：
# ----------------------------------------------------------------------
# for var in item1 item2 ... itemN; do command1; command2… done;

# 当变量值在列表里，for循环即执行一次所有命令，使用变量名获取列表中的当前取值。
# 命令可为任何有效的shell命令和语句。
# 
# in列表可以包含替换、字符串和文件名。
# in列表是可选的，如果不用它，for循环使用命令行的位置参数。
# ----------------------------------------------------------------------




# 例如，顺序输出当前列表中的数字：
# ----------------------------------------------------------------------

for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

 
```
## process_ifelse 
[`process_ifelse`](./08_examples_process/process_ifelse.sh)

```python 
# ----------------------------------------------------------------------
# if 语句语法格式：
# ----------------------------------------------------------------------
# if condition
# then
#    command1 
#    command2
#    ...
#    commandN 
# fi
# ----------------------------------------------------------------------


# 写成一行（适用于终端命令提示符）：
# ----------------------------------------------------------------------

if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi  # 末尾的fi就是if倒过来拼写，后面还会遇到类似的。

# ----------------------------------------------------------------------
# 		if else
# ----------------------------------------------------------------------
# if else 语法格式：
# ----------------------------------------------------------------------
# if condition
# then
#    command1 
#    command2
#    ...
#    commandN
# else
#    command
# fi
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
#			if else-if else
# ----------------------------------------------------------------------
# if else-if else 语法格式：
# ----------------------------------------------------------------------

 
```
## process_loop_jump 
[`process_loop_jump`](./08_examples_process/process_loop_jump.sh)

```python 
# 	break命令
# ----------------------------------------------------------------------
# break命令允许跳出所有循环（终止执行后面的所有循环）。


# 下面的例子中，脚本进入死循环直至用户输入数字大于5。
# 要跳出这个循环，返回到shell提示符下，需要使用break命令。

while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) 
        	echo "你输入的数字为 $aNum!"
        ;;
        *) 
        	echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break
        ;;
    esac
done


# 执行以上代码，输出结果为：
# ----------------------------------------------------------------------

# 输入 1 到 5 之间的数字:3
# 你输入的数字为 3!
# 输入 1 到 5 之间的数字:7
# 你输入的数字不是 1 到 5 之间的! 游戏结束



# ----------------------------------------------------------------------
#	continue
# ----------------------------------------------------------------------
# continue命令与break命令类似，只有一点差别，它不会跳出所有循环，仅仅跳出当前循环。

# 对上面的例子进行修改：

 
```
## process_select 
[`process_select`](./08_examples_process/process_select.sh)

```python 


# ----------------------------------------------------------------------
# 示例1：选择你的操作系统。
#	一次选择后，break 跳出循环
# ----------------------------------------------------------------------
echo "What is your favourite OS?"
select var in "Linux" "Gnu Hurd" "Free BSD" "Other"; do
  break
done

echo "You have selected $var"





# ----------------------------------------------------------------------
# 示例2：RANDOM 随机数
# ----------------------------------------------------------------------
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
 
```
## process_unlimit_loop 
[`process_unlimit_loop`](./08_examples_process/process_unlimit_loop.sh)

```python 

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

 
```
## process_until 
[`process_until`](./08_examples_process/process_until.sh)

```python 


# ----------------------------------------------------------------------
# until 语法格式:

# until condition
# do
#    command
# done

# condition 一般为条件表达式，如果返回值为 false，则继续执行循环体内的语句，否则跳出循环。
# ----------------------------------------------------------------------

# 以下实例我们使用 until 命令来输出 0 ~ 9 的数字：
# ----------------------------------------------------------------------

a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done


# 运行结果：
#
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9

read a 
```
## process_while 
[`process_while`](./08_examples_process/process_while.sh)

```python 
# while condition
# do
#    command
# done
# ----------------------------------------------------------------------





# 以下是一个基本的while循环，测试条件是：
#	如果int小于等于5，那么条件返回真。
#	int从0开始，每次循环处理时，int加1。
# 运行上述脚本，返回数字1到5，然后终止。
# ----------------------------------------------------------------------

int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done


# 运行脚本，输出：
# ----------------------------------------------------------------------
# 1
# 2
# 3
# 4
# 5


# 代码中使用了 Bash let 命令，它用于执行一个或多个表达式，
#	变量计算中不需要加上 $ 来表示变量，具体可查阅：Bash let 命令
# ----------------------------------------------------------------------
a=1
b=3
c=-1
let "c=a+b"
echo "c: $c"
 
```
# 09_examples_function 
[**09_examples_function**](./09_examples_function)
## func_param 
[`func_param`](./09_examples_function/func_param.sh)

```python 
# 注意，$10 不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数。
# -----------------------------------------------------------------------

# 另外，还有几个特殊字符用来处理参数：
# -----------------------------------------------------------------------
# 参数处理		说明
# -----------------------------------------------------------------------
# $#		传递到脚本的参数个数
# $*		以一个单字符串显示所有向脚本传递的参数
# $$		脚本运行的当前进程ID号
# $!		后台运行的最后一个进程的ID号
# $@		与$*相同，但是使用时加引号，并在引号中返回每个参数。
# $-		显示Shell使用的当前选项，与set命令功能相同。
# $?		显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
# -----------------------------------------------------------------------


# 带参数的函数示例：
# -----------------------------------------------------------------------

funWithParam(){
    echo "第一个参数为 $1 !"
    echo "第二个参数为 $2 !"
    echo "第十个参数为 $10 !"
    echo "第十个参数为 ${10} !"
    echo "第十一个参数为 ${11} !"
    echo "参数总数有 $# 个!"
    echo "作为一个字符串输出所有参数 $* !"
}
funWithParam 1 2 3 4 5 6 7 8 9 34 73

# 输出结果：

# 第一个参数为 1 !
# 第二个参数为 2 !
# 第十个参数为 10 !
# 第十个参数为 34 !
# 第十一个参数为 73 !
# 参数总数有 11 个!
# 作为一个字符串输出所有参数 1 2 3 4 5 6 7 8 9 34 73 !
# -----------------------------------------------------------------------
 
```
## func_started 
[`func_started`](./09_examples_function/func_started.sh)

```python 

# [ function ] funname [()]
# {
#    action;
#    [return int;]
# }
# ----------------------------------------------------------------------

# 说明：

# 1、可以带function fun() 定义，也可以直接fun() 定义,不带任何参数。
# 2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值。 return后跟数值n(0-255
# ----------------------------------------------------------------------


# 下面的例子定义了一个函数并进行调用：
# ----------------------------------------------------------------------

demoFun(){
    echo "这是我的第一个 shell 函数!"
}

echo "-----函数开始执行-----"
demoFun
echo "-----函数执行完毕-----"

#		输出结果：
# ----------------------------------------------------------------------

# -----函数开始执行-----
# 这是我的第一个 shell 函数!
# -----函数执行完毕-----





# 下面定义一个带有return语句的函数：
# ----------------------------------------------------------------------

funWithReturn(){
 
```
# 10_examples_file 
[**10_examples_file**](./10_examples_file)
## file_dev_null 
[`file_dev_null`](./10_examples_file/file_dev_null.sh)

```python 
$ command > /dev/null

# /dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。
# 但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果。
# ----------------------------------------------------------------------



# ----------------------------------------------------------------------
# 如果希望屏蔽 stdout 和 stderr，可以这样写：
$ command > /dev/null 2>&1

# 注意：0 是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。
# ---------------------------------------------------------------------- 
```
## file_eof 
[`file_eof`](./10_examples_file/file_eof.sh)

```python 
# command << delimiter
#     document
# delimiter
# ----------------------------------------------------------------------
# 它的作用是将两个 delimiter 之间的内容(document) 作为输入传递给 command。
# ----------------------------------------------------------------------

# 注意：
# ----------------------------------------------------------------------
# 结尾的delimiter 一定要顶格写，前面不能有任何字符，后面也不能有任何字符，包括空格和 tab 缩进。
# 开始的delimiter前后的空格会被忽略掉。
# ----------------------------------------------------------------------




# ----------------------------------------------------------------------
# 实例
# ----------------------------------------------------------------------
# 在命令行中通过 wc -l 命令计算 Here Document 的行数：

wc -l << EOF
    welcome
    bash 
    world
EOF


# 3          # 输出结果为 3 行
# ----------------------------------------------------------------------





# ----------------------------------------------------------------------
# 我们也可以将 Here Document 用在脚本中，例如：
# ----------------------------------------------------------------------

# test.sh

 
```
## file_help 
[`file_help`](./10_examples_file/file_help.sh)

```python 



# ----------------------------------------------------------------------
# 实例
# ----------------------------------------------------------------------
function help() {
cat << HELP
USAGE: help function test [-h] "file_help.sh 1 2"
OPTIONS: -h help text
EXAMPLE: xtitlebar "cvs"
HELP
exit 0
}

# in case of error or if -h is given we call the function help:
if [[ $1 == '' || $1 == '-h' ]]; then
  help
fi

# send the escape sequence to change the xterm titelbar:
echo -e "\033]0;$1\007" 
```
## file_stdin 
[`file_stdin`](./10_examples_file/file_stdin.sh)

```python 
#
# 注意：输出重定向是大于号(>)，输入重定向是小于号(<)。
# ----------------------------------------------------------------------




# 	实例
# ----------------------------------------------------------------------
# 接着以上实例，我们需要统计 users 文件的行数，执行以下命令：
$ wc -l users
# 2 users

# 也可以将输入重定向到 users 文件：
$  wc -l < users
# 2 

# 注意：上面两个例子的结果不同：
#	第一个例子，会输出文件名；
#	第二个不会，因为它仅仅知道从标准输入读取内容。
# ----------------------------------------------------------------------



# command1 < infile > outfile
# 同时替换输入和输出，执行command1，从文件infile读取内容，然后将输出写入到outfile中。
# ----------------------------------------------------------------------
$ wc -l < users > stats
# tips：wc -l 统计 users内容行数，把结果写入到文件stats




# ----------------------------------------------------------------------
# 如果希望 stderr 重定向到 file，可以这样写：
# $ command 2 > file

#如果希望 stderr 追加到 file 文件末尾，可以这样写：
# $ command 2 >> file

#2 表示标准错误文件(stderr)。
 
```
## file_stdout 
[`file_stdout`](./10_examples_file/file_stdout.sh)

```python 

# 重定向命令列表如下：
# ----------------------------------------------------------------------

# 命令					说明
# ----------------------------------------------------------------------
# command > file	将输出重定向到 file。
# command < file	将输入重定向到 file。
# command >> file	将输出以追加的方式重定向到 file。
# n > file			将文件描述符为 n 的文件重定向到 file。
# n >> file			将文件描述符为 n 的文件以追加的方式重定向到 file。
# n >& m			将输出文件 m 和 n 合并。
# n <& m			将输入文件 m 和 n 合并。
# << tag			将开始标记 tag 和结束标记 tag 之间的内容作为输入。
# ----------------------------------------------------------------------


# ----------------------------------------------------------------------
# 需要注意的是文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。
# ----------------------------------------------------------------------
# 重定向深入讲解
# ----------------------------------------------------------------------
# 一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：

# 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
# 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
# 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。
# 默认情况下，command > file 将 stdout 重定向到 file，command < file 将stdin 重定向到 file。
# ----------------------------------------------------------------------




# 					输出重定向
# ----------------------------------------------------------------------
# 重定向一般通过在命令间插入特定的符号来实现。特别的，这些符号的语法如下所示:

# command1 > file1
# 上面这个命令执行command1然后将输出的内容存入file1。

# 注意：任何file1内的已经存在的内容将被新内容替代。如果要将新内容添加在文件末尾，请使用>>操作符。
 
```
# 11_examples_import 
[**11_examples_import**](./11_examples_import)
## import_file 
[`import_file`](./11_examples_import/import_file.sh)

```python 
# . filename   
# 注意点号(.)和文件名中间有一空格

# 或
# source filename
# ---------------------------------------------------------------------------



#	实例
# ---------------------------------------------------------------------------

# 创建两个 shell 脚本文件。

# test1.sh 代码如下：
# url="http://www.baidu.com"


# test2.sh 代码如下：

#使用  “.” 号来引用 test1.sh 文件
. ./test1.sh

# 或者使用以下包含文件代码
# source ./test1.sh

echo "官网地址：$url"

# 接下来，我们为 test2.sh 添加可执行权限并执行：
#$ chmod +x test2.sh 
#$ ./test2.sh 

#官网地址：http://www.runoob.com
#注：被包含的文件 test1.sh 不需要可执行权限。

read exits 
```
## test1 
[`test1`](./11_examples_import/test1.sh)

```python 
 
```
# 12_examples_debug 
[**12_examples_debug**](./12_examples_debug)
## shell_debug 
[`shell_debug`](./12_examples_debug/shell_debug.sh)

```python 
# 启用
set -euo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

# 禁用
set +euo

# ==============================================================================
#		shell —— debug 脚本调试
# ==============================================================================
# -n 将会只检查脚本的语法错误而不执行脚本。 
# -v 将会在命令执行前输出它们。
# -x 将会在命令行处理之后输出命令。
#
# bash -n scriptname
# bash -v scriptname
# bash -x scriptname
#-------------------------------------------------------------------------------
# set -euo pipefail
# trap "echo 'error: Script failed: see failed command above'" ERR
# 一个好的习惯是在脚本文件开头这样写，这会使它能够检测一些错误，并在错误发生时中断程序并输出信息
#
# -u			如果有任何未定义的变量引用，该设置将导致脚本立即退出
# -e			如果任何命令[1]具有非零退出状态，该选项将指示bash立即退出
# -o pipefail	此设置可防止管道中的错误被屏蔽。
#				如果管道中的任何命令失败，则将使用该返回码作为整个管道的返回码 (echo $?)。
#				默认情况下，管道的返回代码是最后一个命令的代码 - 即使成功。
# ------------------------------------------------------------------------------




# =================================================================
#	 示例1：检查脚本的语法错误
# =================================================================
bash -n debug.sh

# output:
#-------------------------------------------------------------------
# 

 
```
# 13_examples_settings 
[**13_examples_settings**](./13_examples_settings)
## ifs_test 
[`ifs_test`](./13_examples_settings/ifs_test.sh)

```python 


# =================================================================
#	 示例：如果将此调用为 
#	sh ifs_test.sh notes todo-list 'My Resume.doc'，
# 	然后使用默认的IFS值，则第三个参数将被错误解析为两个单独的文件名为“My”和“Resume.doc”。
#	当实际上它是一个文件，它有一个空间，名为“我的Resume.doc”。
#-------------------------------------------------------------------
# 	将IFS设置为$'\n\t'意味着单词拆分只会发生在换行符和制表符中。
# 	IFS=$'\n\t'
# =================================================================
IFS=$'\n\t'
for arg in $@; do
    echo "doing something with file: $arg"
done

#-------------------------------------------------------------------
# output:
#-------------------------------------------------------------------
# $ ./ifs_test.sh notes todo-list 'My Resume.doc'
# doing something with file: notes
# doing something with file: todo-list
# doing something with file: My
# doing something with file: Resume.doc


#-------------------------------------------------------------------
# IFS=$'\n\t' 
#	output:
#-------------------------------------------------------------------
# $ ./ifs_test.sh notes todo-list 'My Resume.doc'
# doing something with file: notes
# doing something with file: todo-list
# doing something with file: My Resume.doc

 
```
## settings_ifs 
[`settings_ifs`](./13_examples_settings/settings_ifs.sh)

```python 
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


 
```
# 14_examples_commons 
[**14_examples_commons**](./14_examples_commons)
## check-args 
[`check-args`](./14_examples_commons/check-args.sh)

```python 
# =================================================================
# 在严格模式下，您需要将此用于所有位置参数引用
# =================================================================

set -u

name=${1:-}
if [[ -z "$name" ]]; then
    echo "usage: $0 NAME"
    exit 1
fi


echo "Hello, $name"


#-------------------------------------------------------------------
# output:
#-------------------------------------------------------------------
# $ bash check-args.sh
# usage: check-args.sh NAME

# $ bash check-args.sh haha
# Hello, haha
 
```
## force-clean 
[`force-clean`](./14_examples_commons/force-clean.sh)

```python 
# =================================================================
#	clean —— 在脚本退出的时候强制清理资源
# =================================================================
# 定义了一个执行清理或释放资源的bash函数，然后在退出时注册要自动调用的函数。
# -----------------------------------------------------------------




# =================================================================
#	 示例：以下是如何使用退出时来强大地清理临时目录：
# =================================================================
# 现在脚本可以在“$scratch”目录中写入文件。
# 退出时会自动删除，无论是否出错，或正常完成。

# 生成一个临时目录
scratch=$(mktemp -d -t tmp.XXXXXXXXXX)
function finish {
  rm -rf "$scratch"
}

trap finish EXIT

# output:
#-------------------------------------------------------------------
# 
```
## strong-bash 
[`strong-bash`](./14_examples_commons/strong-bash.sh)

```python 
# =================================================================
#		强壮健康的bash脚本应该是怎么样的？
# =================================================================
# 1、提供--help标记
# 2、检查所有命令的可用性
# 3、独立于当前工作目录
# 4、如何读取输入：环境变量 vs. 标记
# 5、打印对系统执行的所有操作
# 6、如果有必要，提供--silent选项
# 7、重新开启显示
# 8、用动画的方式显示进度
# 9、用颜色编码输出
# 10、出现错误立即退出脚本
# 11、自己执行清理工作
# 12、在退出时使用不同的错误码
# 13、在结束时打印一个新行
# -----------------------------------------------------------------


set -euo pipefail

# =================================================================
#	 示例：提供 --help 标记
# -----------------------------------------------------------------
# 提供help选项，为脚本提供帮助文档，也方便在日后使用或修改文本作为依据
# =================================================================
function help() {
	if [[ ${#@} -ne 0  && "${@#"--help"}" = "" ]]; then
	  printf -- "${0} --help\n"
	  printf -- '强壮的bash脚本...\n'
	  printf -- "usage: bash +x ${0}\n"
	  exit 0
	fi
}

# output:
#-------------------------------------------------------------------
# $ sh strong-bash.sh --help
# strong-bash.sh --help
# 强壮的bash脚本...
# usage: bash +x strong-bash.sh 
 
```
#  
[****](./)
## comment 
[`comment`](.//comment.sh)

```python 
# =================================================================
#
# =================================================================
#
# -----------------------------------------------------------------




# =================================================================
#	 示例：
# =================================================================

# output:
#------------------------------------------------------------------
# 


# =================================================================
#	 示例：
# =================================================================


# output:
#-------------------------------------------------------------------
#







read exits 
```
