#!/bin/bash

if [ ! -f "$1" ]; then
    echo "指定されたファイルが見つかりません$1" >&2
    exit 1
fi

headline=$(head -n 1 "$1")


case "$headline" in
    */bin/sh|*bash*)
        mv -v "$1" "${1}.sh"
        ;;
    *perl*)
        mv -v "$1" "${1}.pl"
