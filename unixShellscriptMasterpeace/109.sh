#!/bin/bash

# パッケージのインストール日、更新日を調べる

if [ ! -f "$1" ]; then
    ehco "no file : $1" >&2
    exit 1
fi

pkglist=$(cat "$1")

rpm -q $pkglist --queryformat '%{INSTALLTIME:date} : %{NAME}\n'
