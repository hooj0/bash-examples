#!/bin/bash
# @author: hoojo
# @email: hoojo_@126.com
# @github: https://github.com/hooj0
# @create date: 2018-07-01 16:17:13
# @copyright by hoojo@2018
# @changelog Added bash `commons -> check args` example


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
