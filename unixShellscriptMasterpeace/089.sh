#!/bin/bash

# 異常終了時に作業ファイルを消去

tmpfile="calctmp.$$"
: > "$tmpfile"

trap 'rm -f "$tmpfile"' EXIT

./calcA.sh >> "$tmpfile"
./calcB.sh >> "$tmpfile"

awk '{sum += $1}' END{print sum}' "$tmpfie"
