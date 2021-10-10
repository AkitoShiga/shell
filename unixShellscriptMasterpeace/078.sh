#!/bin/bash

# システムログからIPアドレスごとのアクセス回数を集計する
securelog="/var/log/secure"

pattern="^.*sshd[.*/].*Failed password for.* from \(.*\) port .*"

# パスワード認証失敗ログからIPアドレスを抽出し、カウントして表示
sed -n "s/$pattern/\1/p" "$seccurelog" |sort| uniq -c | sort -nr
