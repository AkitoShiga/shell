#!/bin/bash

# サーバー構築のパッケージリストをシェルスクリプトの形で管理する


pkglist="httpd zsh xz git"

for pkg in $pkglist

do
    yum -y install $pkg
done
