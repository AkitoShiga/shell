#!/bin/bash

# 2つのディレクトリの差分を表示
dirA="dir1"
dirB="dir2"

# 差分確認
( cd ${dirA}; find . -maxdepth 1 -type f -print | fort) > tempfile1.lst
( cd ${dirA}; find . -maxdepth 1 -type f -print | fort) > tempfile2.lst

comm tempfile1.lst tempfile2.lst
