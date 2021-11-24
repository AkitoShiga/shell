#!/bin/bash

#Webサイトの変更を開始する

url="http://www.example.org/update.html"
newfile="new.dat"
oldfile="old.dat"

curl -so "$newfile" "$url"
cmp -s "$newfile" "oldfile"

if [ $? -ne 0 ]; then
    date_str=$(date '+%Y/%m/%d %H:%M%S')

    echo "[$date_str] 変更有り"
    /home/user1/bin/alert.shell
fi

mv -f "$newfile" "$oldfile"
