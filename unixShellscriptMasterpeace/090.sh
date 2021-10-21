#!/bin/bash

# 指定した環境変数を設定してコマンドを実行する

TMPDIR="/disk1/tmp"
export TMPDIR

# execでフォークせずプロセスを実行する
# $@で渡された引数を全てクォーティングして渡す
exec ./myappd "$@"
