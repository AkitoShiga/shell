#!/bin/bash

# 選択式メニューを表示して、入力された数値の処理を実行する

# ここは無限ループにしてる? → してた
while :
do
  echo "Menu:"
  echo "1) list file"
  echo "2) current directory"
  echo "3) exit"

  # ここで一時停止して標準入力を受け取る
  read number
  #number=1
  case $number in
    1)
      ls
      ;;
    2)
      pwd
      ;;
    3)
      exit
      ;;
    *)
      echo "Error: Unknown Command"
      ;;
  esac

  echo
done