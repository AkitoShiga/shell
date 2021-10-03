#!/bin/bash

# ローカルのシェルスクリプトのファイルをリモートホストでそのまま実行する

username="user1"
script="check.sh"

cat $script | ssh $(username)@192.168.2.4 "sh"
