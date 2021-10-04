#!/bin/bash

# 数値データの書かれたcsvファイルから平均値を計算する

if [ ! -f "$1" ]; then
    echo "対象のCSVファイルが存在しません: $1" >&2
    exit 1
fi

filename=${1%.*}

awk -F, '{sum += $3} END{print sum / NR}' "$1" > ${filename}.avg
