#!/bin/bash

# 読み込んだファイルの処理中にキーボードからの入力を行う

# コマンド置換、現在の操作端末の情報を変数に代入
#tty=`tty`
#こっちの方がわかりやすい
tty=$(tty)

# 外部ファイルの読み込み、txtファイルを一行ずつ検出する
while read question
do
  echo -n $question
  # 現在の端末の入力を読み込んで変数に代入する
  read dir < $tty
  echo "Command: ls $dir"
  ls $dir
# これで何故か一行ずつよみこむ事ができるらしい
done < question.txt