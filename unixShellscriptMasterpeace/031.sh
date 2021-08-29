#!/bin/bash

# 更新のないファイルを削除する

logdir="./"

find $logdir -mtime +365 | xargs rm -v

