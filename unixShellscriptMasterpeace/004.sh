#!/bin/bash

# エコーバックの抑制

# 文字列を変数に格納する時にクオーティングいらないらしい
username=guest
hostname=localhost

echo "$username"
echo "$hostname"

echo -n "Password: "
# エコーバックをOFFにする
stty -echo
read password
# エコーバックをONにする
stty echo

echo

# 入力されたパスワードでダウンロードを行う
wget -q --password=$password "ftp://${username}@${hostname}/filename.txt"