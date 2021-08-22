#!/bin/bash

# ディレクトリを移動後元に戻る
# ()内はサブシェルとなり、ディレクトリ移動はこの中にだけ影響する
(
echo "Archive: /var/tmp/"
cd /var/tmp
echo $(pwd)
)
echo "Start: 024.sh"
./024.sh $1
