#!/bin/bash

# 相対パスと絶対パスでもどちらも同じ動作をする

cd "$(dirname "$0")"

./start.sh
./end.sh
