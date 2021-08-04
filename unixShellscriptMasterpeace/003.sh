#!/bin/bash

# キーボードの入力を変数に格納
# -n 改行しない
echo -n "Enter your ID: "
read id
echo "Now your ID is $id"

echo -n "Enter your NAME and NUMBER: "
read name number

echo "Now your NAME and NUMBER are $name $number"

# -e 改行コードの有効化
echo -e "\n============\n"

echo -n "Enter your ID: "
read id2

echo -n "Enter your NAME: "
read name2

echo -s "Enter your NUMBER: "
read number2

# dummyに特別な意味はない
echo "Input any key to continue "
read dummy

echo "Now your ID is $id2."
echo "NAME: $name2, NUMBER: $number2"