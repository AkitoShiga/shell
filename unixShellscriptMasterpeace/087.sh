#!/bin/bash

# ヒアドキュメントでインデントする

if [ -z "$1" ]; then
    echo "title" >&2
    exit 1

else
    # コマンド
	cat <<-EOT
	heihie
	heihei
	hiehei
	hiehei
		$1
	EOT
fi
