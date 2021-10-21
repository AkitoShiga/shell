#!/bin/bash

# それぞれのOSごとのコマンドを変数として定義する

case $(uname -s) in

    Darwin)
        ECHO="/bin/echo"
        ;;
    *)
        ECHO="echo"
        ;;
esac

$ECHO -n "改行をしない"
$ECHO "メッセージ"

