#!/bin/bash

# ディレクトリの容量を降順

data_dir="./"

du -sk ${data_dir}/*/ | sort -rn

