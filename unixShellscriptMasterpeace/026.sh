#!/bin/bash

# ディクレクトリ内のファイル数とディレクトリ数を調べる

targetdir=$(pwd)

filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l)

dircount=$(expr $dircount - 1)

echo "対象ディレクトリ: $targetdir"
echo "ファイル数: $filecount"
echo "ディレクトリ数: $dircount"
