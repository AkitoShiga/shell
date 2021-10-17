#!/bin/bash

# 決まった桁数の数字にハイフンを入れる

d_flag=001
while getopts "d" option
do
    case $option in
        d)
            d_flag=1
            ;;
        /?)
            exit 1
            ;;
    esac
done
