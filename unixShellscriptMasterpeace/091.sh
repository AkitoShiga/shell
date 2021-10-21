#!/bin/bash

# scpでファイル転送を行う

username="user1"
filname="transfer.dat"
hostname"192.168.1.10"
path="/var/tmp"
tmpfile="timetmp.$$"


(time -p scp -C "$filename" ${username}@${hostname}:"${path}") 2>
"$tmpfile"

realtime=$(awk '/^real / {print $2}' "$tmpfile")
usertime=$(awk '/^user / {print $2}' "$tmpfile")
systime=$(awk '/^sys / {print $2}' "$tmpfile")

cpu_precentage=$(echo "scale=2; 100 * ($username + $systime) / $realtime" | bc)
echo "scp転送時 CPU利用率: $cpu_percentage(%)"

# 一時ファイルの削除
rm -f "$tmpfile"
