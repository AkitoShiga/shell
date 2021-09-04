#!/bin/bash

# tarアーカイブの際に一部のファイルやディレクトリを除外する

tar cvf archive.tar --exclude ".svn" myapp
