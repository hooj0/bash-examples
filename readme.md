+ [**01_example_started**](./01_example_started)
	- [`hello_world`](./01_example_started/hello_world.sh)
		+ [echo 命令用于向窗口输出文本#L14](./01_example_started/hello_world.sh#L14)
		+ [运行 Shell 脚本有两种方法：#L19](./01_example_started/hello_world.sh#L19)
		+ [1、作为可执行程序#L22](./01_example_started/hello_world.sh#L22)
		+ [chmod +x ./hello_world.sh  使脚本具有执行权限#L26](./01_example_started/hello_world.sh#L26)
		+ [2、作为解释器参数#L36](./01_example_started/hello_world.sh#L36)
		+ [这种运行方式是，直接运行解释器，其参数就是 shell 脚本的文件名，如：#L38](./01_example_started/hello_world.sh#L38)
+ [**02_examples_variable**](./02_examples_variable)
	- [`var_assignment`](./02_examples_variable/var_assignment.sh)
		+ [变量赋值操作#L10](./02_examples_variable/var_assignment.sh#L10)
		+ [变量运算赋值#L31](./02_examples_variable/var_assignment.sh#L31)
		+ [变量参数默认值#L62](./02_examples_variable/var_assignment.sh#L62)
		+ [忽略默认值. $bar = "beta":#L89](./02_examples_variable/var_assignment.sh#L89)
		+ [要使默认值为空字符串，请使用 ${VARNAME:-}#L92](./02_examples_variable/var_assignment.sh#L92)
	- [`var_declare`](./02_examples_variable/var_declare.sh)
		+ [声明变量#L9](./02_examples_variable/var_declare.sh#L9)
		+ [定义变量时，变量名不加美元符号（$），如：#L14](./02_examples_variable/var_declare.sh#L14)
		+ [变量名的命名须遵循规则#L19](./02_examples_variable/var_declare.sh#L19)
		+ [var1 = "不能有空格"	 var1: 未找到命令#L28](./02_examples_variable/var_declare.sh#L28)
		+ [有效的 Shell 变量名示例如下：#L36](./02_examples_variable/var_declare.sh#L36)
		+ [无效的变量命名：#L43](./02_examples_variable/var_declare.sh#L43)
	- [`var_delete`](./02_examples_variable/var_delete.sh)
		+ [删除变量#L10](./02_examples_variable/var_delete.sh#L10)
		+ [使用 unset 命令可以删除变量。#L12](./02_examples_variable/var_delete.sh#L12)
	- [`var_readonly`](./02_examples_variable/var_readonly.sh)
		+ [只读变量#L10](./02_examples_variable/var_readonly.sh#L10)
		+ [使用 readonly 命令可以将变量定义为只读变量，只读变量的值不能被改变。#L13](./02_examples_variable/var_readonly.sh#L13)
	- [`var_scope`](./02_examples_variable/var_scope.sh)
		+ [变量作用域类型#L10](./02_examples_variable/var_scope.sh#L10)
		+ [运行shell时，会同时存在三种变量：#L14](./02_examples_variable/var_scope.sh#L14)
	- [`var_ternary_op`](./02_examples_variable/var_ternary_op.sh)
		+ [变量三元运算#L10](./02_examples_variable/var_ternary_op.sh#L10)
	- [`var_used`](./02_examples_variable/var_used.sh)
		+ [使用变量#L10](./02_examples_variable/var_used.sh#L10)
+ [**03_examples_data_type**](./03_examples_data_type)
	- [`type_arrays`](./03_examples_data_type/type_arrays.sh)
		+ [Shell 数组#L12](./03_examples_data_type/type_arrays.sh#L12)
		+ [定义数组#L21](./03_examples_data_type/type_arrays.sh#L21)
		+ [读取数组#L84](./03_examples_data_type/type_arrays.sh#L84)
		+ [根据数组元素索引获取该数组元素值时，数组下标可为变量。#L97](./03_examples_data_type/type_arrays.sh#L97)
		+ [获取数组的长度#L104](./03_examples_data_type/type_arrays.sh#L104)
		+ [取得数组元素的个数#L108](./03_examples_data_type/type_arrays.sh#L108)
		+ [取得数组单个元素的长度#L116](./03_examples_data_type/type_arrays.sh#L116)
	- [`type_strings`](./03_examples_data_type/type_strings.sh)
		+ [Shell 字符串#L12](./03_examples_data_type/type_strings.sh#L12)
		+ [单引号#L30](./03_examples_data_type/type_strings.sh#L30)
		+ [双引号#L40](./03_examples_data_type/type_strings.sh#L40)
		+ [拼接字符串#L46](./03_examples_data_type/type_strings.sh#L46)
		+ [获取字符串长度#L54](./03_examples_data_type/type_strings.sh#L54)
		+ [提取子字符串#L62](./03_examples_data_type/type_strings.sh#L62)
		+ [查找子字符串#L68](./03_examples_data_type/type_strings.sh#L68)
		+ [字符串自动组合#L78](./03_examples_data_type/type_strings.sh#L78)
	- [`type_strings_substr`](./03_examples_data_type/type_strings_substr.sh)
		+ [Linux 的字符串截取八种方法#L12](./03_examples_data_type/type_strings_substr.sh#L12)
+ [**04_examples_args**](./04_examples_args)
	- [`args_file`](./04_examples_args/args_file.sh)
		+ [脚本文件选项参数的遍历与使用#L11](./04_examples_args/args_file.sh#L11)
		+ [示例：遍历参数列表，根据不同的选项执行不同的流程#L21](./04_examples_args/args_file.sh#L21)
		+ [示例：bash shell 提供 shift 命令来帮助操作命令行参数，#L97](./04_examples_args/args_file.sh#L97)
		+ [示例：參數的檢查與使用#L140](./04_examples_args/args_file.sh#L140)
		+ [示例：getopt & getopts 获取参数选项列表#L176](./04_examples_args/args_file.sh#L176)
		+ [示例：getopt（一个外部工具）#L259](./04_examples_args/args_file.sh#L259)
	- [`args_input`](./04_examples_args/args_input.sh)
		+ [Shell 传递参数#L10](./04_examples_args/args_input.sh#L10)
	- [`args_read`](./04_examples_args/args_read.sh)
		+ [read 命令用于获取键盘输入信息#L11](./04_examples_args/args_read.sh#L11)
	- [`args_special`](./04_examples_args/args_special.sh)
		+ [特殊参数#L10](./04_examples_args/args_special.sh#L10)
		+ [非数组形式：假设在脚本运行时写了三个参数 1、2、3，，则 " * " 等价于 "1 2 3"（传递了一个参数），#L44](./04_examples_args/args_special.sh#L44)
+ [**05_examples_operator**](./05_examples_operator)
	- [`operator_boolean`](./05_examples_operator/operator_boolean.sh)
		+ [布尔运算符—或与非 逻辑运算符表示形式#L10](./05_examples_operator/operator_boolean.sh#L10)
	- [`operator_file`](./05_examples_operator/operator_file.sh)
		+ [文件测试运算符—文件测试运算符用于检测 Unix 文件的各种属性#L11](./05_examples_operator/operator_file.sh#L11)
		+ [文件不是个目录#L123](./05_examples_operator/operator_file.sh#L123)
		+ [文件存在#L125](./05_examples_operator/operator_file.sh#L125)
	- [`operator_math`](./05_examples_operator/operator_math.sh)
		+ [算术运算符—加减乘除等运算方法#L10](./05_examples_operator/operator_math.sh#L10)
	- [`operator_overview`](./05_examples_operator/operator_overview.sh)
		+ [Shell 基本运算符的描述#L10](./05_examples_operator/operator_overview.sh#L10)
	- [`operator_relation`](./05_examples_operator/operator_relation.sh)
		+ [关系运算符—各种数字比较的方法，大于|等于|小于等等#L10](./05_examples_operator/operator_relation.sh#L10)
		+ [关系运算符只支持数字，不支持字符串，除非字符串的值是数字。#L12](./05_examples_operator/operator_relation.sh#L12)
	- [`operator_string`](./05_examples_operator/operator_string.sh)
		+ [字符串运算符—字符串的比较与判断#L11](./05_examples_operator/operator_string.sh#L11)
+ [**06_examples_output**](./06_examples_output)
	- [`echo_output`](./06_examples_output/echo_output.sh)
		+ [Shell echo命令#L11](./06_examples_output/echo_output.sh#L11)
		+ [2.显示转义字符#L46](./06_examples_output/echo_output.sh#L46)
		+ [3.显示变量#L56](./06_examples_output/echo_output.sh#L56)
		+ [4.显示换行#L71](./06_examples_output/echo_output.sh#L71)
		+ [5.显示不换行#L83](./06_examples_output/echo_output.sh#L83)
		+ [6.显示结果定向至文件，将内容写入到文件#L94](./06_examples_output/echo_output.sh#L94)
		+ [8.显示命令执行结果#L109](./06_examples_output/echo_output.sh#L109)
	- [`printfc_output`](./06_examples_output/printfc_output.sh)
		+ [printf的转义序列#L10](./06_examples_output/printfc_output.sh#L10)
	- [`printf_output`](./06_examples_output/printf_output.sh)
		+ [Shell printf 命令#L10](./06_examples_output/printf_output.sh#L10)
+ [**07_examples_test**](./07_examples_test)
	- [`test_file`](./07_examples_test/test_file.sh)
		+ [Shell test 命令—文件测试#L10](./07_examples_test/test_file.sh#L10)
	- [`test_math`](./07_examples_test/test_math.sh)
		+ [Shell test 命令—数值测试#L10](./07_examples_test/test_math.sh#L10)
	- [`test_string`](./07_examples_test/test_string.sh)
		+ [Shell test 命令—字符串测试#L10](./07_examples_test/test_string.sh#L10)
+ [**08_examples_process**](./08_examples_process)
	- [`each 循环的示例`](./08_examples_process/each.sh)
	- [`process_case`](./08_examples_process/process_case.sh)
		+ [流程语句— case 语句的基本用法#L10](./08_examples_process/process_case.sh#L10)
	- [`process_for`](./08_examples_process/process_for.sh)
		+ [流程语句—for 循环#L10](./08_examples_process/process_for.sh#L10)
	- [`process_ifelse`](./08_examples_process/process_ifelse.sh)
		+ [流程语句—判断逻辑流程#L10](./08_examples_process/process_ifelse.sh#L10)
	- [`process_loop_jump`](./08_examples_process/process_loop_jump.sh)
		+ [流程语句— 跳出循环#L10](./08_examples_process/process_loop_jump.sh#L10)
		+ [break命令#L16](./08_examples_process/process_loop_jump.sh#L16)
	- [`process_select`](./08_examples_process/process_select.sh)
		+ [用户可以从一组不同的值中进行选择：#L13](./08_examples_process/process_select.sh#L13)
		+ [示例1：选择你的操作系统。#L19](./08_examples_process/process_select.sh#L19)
		+ [示例2：RANDOM 随机数#L34](./08_examples_process/process_select.sh#L34)
		+ [IFS 是内部域分隔符，设置变量 pocket的分隔符#L51](./08_examples_process/process_select.sh#L51)
	- [`process_unlimit_loop`](./08_examples_process/process_unlimit_loop.sh)
		+ [流程语句—无限循环#L10](./08_examples_process/process_unlimit_loop.sh#L10)
		+ [让语句一直循环处理业务#L12](./08_examples_process/process_unlimit_loop.sh#L12)
		+ [无限循环语法格式：#L17](./08_examples_process/process_unlimit_loop.sh#L17)
	- [`process_until`](./08_examples_process/process_until.sh)
		+ [流程语句—until 循环#L10](./08_examples_process/process_until.sh#L10)
	- [`process_while`](./08_examples_process/process_while.sh)
		+ [流程语句—while 语句#L10](./08_examples_process/process_while.sh#L10)
+ [**09_examples_function**](./09_examples_function)
	- [`func_param`](./09_examples_function/func_param.sh)
		+ [Shell 函数—函数参数#L10](./09_examples_function/func_param.sh#L10)
	- [`func_started`](./09_examples_function/func_started.sh)
		+ [函数参数示例演示#L24](./09_examples_function/func_started.sh#L24)
+ [**10_examples_file**](./10_examples_file)
	- [`file_dev_null`](./10_examples_file/file_dev_null.sh)
		+ [Shell 输入/输出重定向—/dev/null 文件#L10](./10_examples_file/file_dev_null.sh#L10)
	- [`file_eof`](./10_examples_file/file_eof.sh)
		+ [Shell 输入/输出重定向—Here Document#L14](./10_examples_file/file_eof.sh#L14)
	- [`file_help`](./10_examples_file/file_help.sh)
		+ [help实例#L20](./10_examples_file/file_help.sh#L20)
	- [`file_stdin`](./10_examples_file/file_stdin.sh)
		+ [Shell 输入/输出重定向—输入重定向#L10](./10_examples_file/file_stdin.sh#L10)
	- [`file_stdout`](./10_examples_file/file_stdout.sh)
		+ [Shell 输入/输出重定向—输出重定向#L10](./10_examples_file/file_stdout.sh#L10)
+ [**11_examples_import**](./11_examples_import)
	- [`import_file`](./11_examples_import/import_file.sh)
		+ [Shell 文件导入#L10](./11_examples_import/import_file.sh#L10)
	- [`test1`](./11_examples_import/test1.sh)
+ [**12_examples_debug**](./12_examples_debug)
	- [`shell_debug`](./12_examples_debug/shell_debug.sh)
		+ [启用调试#L9](./12_examples_debug/shell_debug.sh#L9)
		+ [禁用#L13](./12_examples_debug/shell_debug.sh#L13)
		+ [shell — debug 脚本调试#L17](./12_examples_debug/shell_debug.sh#L17)
		+ [示例1：检查脚本的语法错误#L42](./12_examples_debug/shell_debug.sh#L42)
		+ [示例2：执行脚本并输出脚本#L52](./12_examples_debug/shell_debug.sh#L52)
		+ [示例3：在命令行处理之后输出命令#L64](./12_examples_debug/shell_debug.sh#L64)
		+ [示例：期望具有非零退出状态的命令#L75](./12_examples_debug/shell_debug.sh#L75)
		+ [示例：知道一个命令的返回值，即使该返回值不为零，该怎么办呢？#L94](./12_examples_debug/shell_debug.sh#L94)
+ [**13_examples_settings**](./13_examples_settings)
	- [`ifs_test`](./13_examples_settings/ifs_test.sh)
		+ [示例：如果将此调用为#L11](./13_examples_settings/ifs_test.sh#L11)
	- [`settings_ifs`](./13_examples_settings/settings_ifs.sh)
		+ [设置IFS — 设置分词的方式，循环的结合用法#L12](./13_examples_settings/settings_ifs.sh#L12)
		+ [设置默认是分词分割规则#L14](./13_examples_settings/settings_ifs.sh#L14)
		+ [示例：使用空格分词，items被分割成3个词#L21](./13_examples_settings/settings_ifs.sh#L21)
		+ [示例：使用换行分词，items被认为是一个单词#L39](./13_examples_settings/settings_ifs.sh#L39)
		+ [示例：数组设置IFS分词或默认情况效果都是一样的#L55](./13_examples_settings/settings_ifs.sh#L55)
+ [**14_examples_commons**](./14_examples_commons)
	- [`check-args`](./14_examples_commons/check-args.sh)
		+ [在严格模式下，您需要将此用于所有位置参数引用#L11](./14_examples_commons/check-args.sh#L11)
	- [`force-clean`](./14_examples_commons/force-clean.sh)
		+ [clean — 在脚本退出的时候强制清理资源#L12](./14_examples_commons/force-clean.sh#L12)
		+ [示例：以下是如何使用退出时来强大地清理临时目录：#L21](./14_examples_commons/force-clean.sh#L21)
	- [`strong-bash`](./14_examples_commons/strong-bash.sh)
		+ [强壮健康的bash脚本应该是怎么样的？#L11](./14_examples_commons/strong-bash.sh#L11)
		+ [示例：提供 --help 标记#L32](./14_examples_commons/strong-bash.sh#L32)
		+ [示例：检查所有命令的可用性#L54](./14_examples_commons/strong-bash.sh#L54)
		+ [示例：独立于当前工作目录#L79](./14_examples_commons/strong-bash.sh#L79)
		+ [示例：如何读取输入：环境变量 vs. 标记#L98](./14_examples_commons/strong-bash.sh#L98)
		+ [示例：打印对系统执行的所有操作，输出操作日志#L133](./14_examples_commons/strong-bash.sh#L133)
		+ [示例：在必要时提供 --silent 选项#L164](./14_examples_commons/strong-bash.sh#L164)
		+ [示例：重新开启显示#L193](./14_examples_commons/strong-bash.sh#L193)
		+ [示例：用动画的方式显示进度#L222](./14_examples_commons/strong-bash.sh#L222)
		+ [示例：用颜色编码输出#L252](./14_examples_commons/strong-bash.sh#L252)
		+ [示例：出现错误立即退出脚本#L281](./14_examples_commons/strong-bash.sh#L281)
		+ [示例：自己执行清理工作#L310](./14_examples_commons/strong-bash.sh#L310)
		+ [示例：在退出时使用不同的错误码#L337](./14_examples_commons/strong-bash.sh#L337)
		+ [示例：在结束时打印一个新行#L363](./14_examples_commons/strong-bash.sh#L363)
