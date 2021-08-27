#!/bin/bash

# 新規ファイルを作らずに既にあるファイルのみを更新日を変更する

timestamp="201311191234.45"

touch -t $timestamp TEST.sh
touch -c -t $timestamp TESTC.log
