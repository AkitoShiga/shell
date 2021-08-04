#!/bin/bash

# -a オプションが付加されたかどうかのフラグ変数 a_flagと
# -p オプションのセパレータ文字列を定義する

# 変数を初期化
a_flag=0
separator=""

# 変数の代入
while getopts "ap:" option
do
  case $option in
    a)
      a_flag=1
      ;;
    p)
      separator=$OPTARG
      ;;
    \?) # 無効なオプションが指定されると仕様として'?'に代入される
      echo "Usage: getopts.sh [-a] [-p separator] target_dir" 1>&2
      exit 1
      ;;
  esac
done

# オプション指定を位置パラメータから削除
# $() の意味は中のコマンドを実行して文字列で展開する --コマンド置換
# expr--式 式を評価して標準出力に送る。 これがないと$()の中なので$OPTINDというコマンドを実行したものとみなされる
# shift の引数は文字列でも数値でもどっちでもいいらしい
shift $(expr $OPTIND - 1)
path="$1"

# -a オプションが指定されたかどうかを、シェル変数a_flagの値で判断する
if [ $a_flag -eq 1 ]; then
  ls -a -- "$path"
else
  ls -- "$path"
fi
# -n は空文字
if [ -n "$separator" ]; then
  echo "$separator"
fi

