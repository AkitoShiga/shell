#!/bin/bash

# コマンドの出力結果からファイル名作成、そのファイルにコマンド実行

err_count=$(grep -c "ERROR" ./$(hostname).log")
echo "Error couts: $err_count"
