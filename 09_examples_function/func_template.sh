#!/bin/bash
# author:   hoojo
# email:    hoojo_@126.com
# github:   https://github.com/hooj0
# create date: 2018-11-13
# copyright by hoojo@2018
# @changelog Added bash `process -> func use` example



# =================================================================
#       函数在here document中的运用
# =================================================================
#
# -----------------------------------------------------------------




# =================================================================
# 示例：函数在here document中使用示例
# =================================================================
TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated $CURRENT_TIME, by $USER"

report_uptime () {
    return
}
report_disk_space () {
    return
}
report_home_space () {
    return
}

cat << _EOF_
<HTML>
    <HEAD>
        <TITLE>$TITLE</TITLE>
    </HEAD>
    <BODY>
        <H1>$TITLE</H1>
        <P>$TIME_STAMP</P>
        $(report_uptime)
        $(report_disk_space)
        $(report_home_space)
    </BODY>
</HTML>
_EOF_







read exits