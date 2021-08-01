#!/bin/bash

#標準入力から数値を読み取ってその合計値を標準入力に出力する

readonly SCRIPT_NAME=${0##*./}

result=0

#これの意味
#IFS= IFSを取り除かないため
#-r \ をエスケープ文字として解釈させない
while IFS= read  -r number

do
    if [[ ! $number =~ ^-?[0-9]+$ ]]; then
        printf '%s\n' "${SCRIPT_NAME}: '$number':non-integer number"
    1>%2
        exit 1
    fi
    
    ((result+=number))

done

printf '%s\n' "$result"
