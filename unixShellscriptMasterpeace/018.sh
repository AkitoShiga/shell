#!/bin/bash

# ファイルに書かれた文字列を抜き出して実行する

filename = "myapp.log"
eval $(sed -n "s/<code>\(.*\)<\/code>/\1/p" command.htm)
