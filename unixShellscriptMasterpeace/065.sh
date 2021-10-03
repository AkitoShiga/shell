#!/bin/bash

# 指定したサイズおファイルを作成して転送速度を判定する

# 転送速度を図る一時差異るのサイズを指定

filesize=1024

tmpdata= "tmpdata.tmp"
timefile="timecount.tmp"

# ファイル作成
dd if=/dev/zero of="$tmpdata" conut=$filesize bs=1024 2> /dev/null

# FTP
server="192.168.2.5"
user="user1"
password="xxxxxxxx"

echo "Filesize: $filesize"
echo "FTP Server: $server"

(time -p ftp -n "$server") <<__EOT__ 2> "$timefile"
time ftp -n "$server" <<__EOT__
user "$user" "$password"
binary
put "$tmpdata"
__EOT__

# timeコマンドの出力結果から実時間取得する
realtime=$(awk '/^real./ {print $2}' "$timefile")
speed=$(echo "${filesize}/${realtime}" | bc)
echo "Transfer Speed: $speed (KB/sec)"
rm -f "$tmpdata" "$timefile"

