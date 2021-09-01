#!/bin/bash

# 重要なファイルをパスワードつきzipとしてアーカイブ

logdir="/home/user1/myapp"

cd "$logdir"

# /home/user/log内をパスワードつきzipでアーカイブ
zip -e -r log.zip log
