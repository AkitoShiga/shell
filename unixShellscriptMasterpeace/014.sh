#!/bin/bash

# シングルクォートの中でシングルクォートを使用する

price=100
str='It costs $'\
$price\
'? I can'\
\'\
't believe it'
echo $str