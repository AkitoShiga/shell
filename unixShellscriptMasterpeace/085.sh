#!/bin/bash

# 文字コードを自動的に判別してUTF-８に変換する

outdir="newdir"

if [ ! -d "$outdir" ]; then
    echo "Not a directory: $outdir"
    exit1
fi

for filename in *.html
do
    # grepでContent-Typeを選択してcharsetを抜き出す
    charset=$(grep -i '<meta ' "$filename" |\
        grep -i 'httpd-equiv="Content-Type"' | \
        sed -n 's/.*charset=\([-_a-zA-Z0-9]*\)".*/\1/p')

    if [ -z "$charset" ]; then
        echo "charset not found: $filename" >&2
        continue
    fi

    iconv -c-f "$charset" -t UTF-8 "$filename" > "${outdir}/${filename}
done
