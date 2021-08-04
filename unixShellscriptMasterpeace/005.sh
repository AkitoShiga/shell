#!/bin/bash
# ユーザーの入力を1文字だけ取得する

echo -n "Type Your Answer [y/n]: "

# 現在の端末設定を変数tty_stateにバックアップしてから端末をraw設定する
tty_state=$(stty -g)
# raw設定では改行が不要になる
stty raw

# 一文字だけ読み込む
# dd ブロック単位での読み出しと出力
# bs=ブロックサイズ
# count=回数
# 2> は実行メッセージの抑制、標準エラー出力なの？？？
#char=$(dd bs=1 count=1 2> /dev/null)
char=$(dd bs=5 count=2)

# 端末設定を元に戻す
stty "$tty_state"

case "$char" in
  [yY])
    echo "Input: Yes"
    ;;
  [nN])
    echo "Input: No"
    ;;
  *)
    echo "Input: What?"
    ;;
esac

