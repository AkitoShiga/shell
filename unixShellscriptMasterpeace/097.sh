#!/bin/bash

ipaddr="localhost"
port=80
# シェルスクリプトの一部で他の言語を使う
waittime=$(perl -e 'print +1 + int(rand(10))')

nc -w 5 -zv $ipaddr $port
sleep $waittime
nc -w 5 -zv $ipaddr $port
