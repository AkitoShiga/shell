
#!/bin/bash

# 変数や関数を外部ファイルに記述する

. ./env.sh

nowtime
cp -i -v large-file.tar.gz "$WORK_DIR"
nowtime
