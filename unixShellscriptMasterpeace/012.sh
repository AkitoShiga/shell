#!/bin/bash

# 関数の中でローカル変数を定義
# 呼び出し元の変数を破壊しないようにする

DIR=/var/tmp

ls_home()
{
  # 変数DIRを関数内のローカル変数として定義
  local DIR

  DIR=~/$1
  echo "directory: $DIR"
  ls $DIR

}

ls_home documents

echo -e "\n================\n"
echo "directory: $DIR"

ls $DIR