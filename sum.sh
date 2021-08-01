#!/bin/bash

# 引数の合計値を計算する

readonly SCRIPT_NAME=${0##*/}

result=0

for number in "$@"

do
#=~で拡張正規表現とみなす
    if [[ ! $number =~ ^-?[0-9]+$ ]]; then
        printf '%s\n' "${SCRIPT_NAME}: '$number': non-integer number"
    1>&2
        exit 1
    fi

    ((result+=number))
done

printf '%s\n' "$result"
