
#!/bin/bash

# 文章などの空白文字を含む文字列変数を引数にとるには

result="invalid value"
#if [ "$result" = "invalid value" ]; then
if [ $result = "invalid value" ]; then
  echo "ERROR: $result" 1>&2
  exit 1
fi
