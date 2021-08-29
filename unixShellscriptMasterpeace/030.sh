#!/bin/bash

# 指定の期間に作成されたファイルをリストアップする

logdir="./"

find $logdir -mtime -4 -mtime +1 -print

