#!/bin/bash

# 実行時に変数の値が空の時は、デフォルト定義した値を設定する。

cp Largefile.tar.gz ${TMPDIR:=/tmp}
cd $TMPDIR
tar xzf Largefile.tar.gz

echo "Extract files to $TMPDIR."
