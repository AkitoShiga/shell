#!/bin/bash

# ファイルサイズをへらすために空行を除去する

outdir="newdir"

if [ ! -d "$outdir" ]; then
    echo "not ad directory: $outdir"
    exit 1
fi

for filename in *.js
do
    sed '/^[[:blank:]]*$/d' "$filename" > "${outdir}/${filename}"
done
