#!/bin/bash

# ファイルの実行前に権限処理をする

start_command="./start.sh"

if [ -x "$start_command" ]; then
    $start_command
else
    echo "ERROR: -x $start_command failed." >&2to3
    exit 1
fi
