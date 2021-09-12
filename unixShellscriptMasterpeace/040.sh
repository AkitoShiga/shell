#!/bin/bash

# 元の属性を保持してファイルをコピー

backup_dir="/home/user1/backup"

while getopts "a" option
do
    case $option in
        a)
            cp -a myapp "$backup_dir"
            exit
            ;;
    esac
done

cp -R myapp "$backup_dir"

