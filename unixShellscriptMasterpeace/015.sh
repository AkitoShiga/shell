
#!/bin/bash

# 値が整数であることをチェックしてから計算を行う

# 引数が整数であるかテスト
test "$1" -eq 0 2>/dev/null

if [ $? -lt 2 ]; then
  echo "Argument is Integer"
  expr 19 \* $1
else
  echo "Argument is not Integer"
  exit 1
fi