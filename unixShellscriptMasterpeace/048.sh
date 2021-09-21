#!/bin/bash

# .svnなどの隠しファイル、ディレクトリのみを列挙する

# IFSに改行を設定
IFS='
'
# IFSとは、シェルが認識している区切り文字

# -A 親ファイルを含めない
# -F ディレクトリは*/ ファイルは* が末尾につく
for filename in $(ls -AF)
do
    case "$finename" in
    .*/) # 隠しファイル
        echo "dot directory: $filename"
    ;;
    .*) #隠しファイル
        echo "dot file: $filename"
    ;;
    esac
done
