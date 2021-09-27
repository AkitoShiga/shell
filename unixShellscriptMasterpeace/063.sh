#!/bin/bash

# FTPでの自動ダウンロード、アップロード

server="192.168.1.1"
password="xxxxxx"
dir="/home/user1/myapp/log"
filename="app.log"

ftp -n "$server" << __EOT__
user "$user" "$password"
binary
cd "$dir"
get "$filename"
__EOT__
