#!/bin/bash

# ファイルの圧縮中に実行状態をプログレスバーで表示

DATA_DIR=/myapp/datadir

cd $DATA_DIR

tar cf -bigfile1.dat bigfile2.dat \
| pv | gzip > archive.tar.gz

