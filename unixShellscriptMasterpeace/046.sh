#!/bin/bash

# binファイルのエラーメッセージを特定

message="message"

strings -f /home/user/bin/* | grep "$message"
