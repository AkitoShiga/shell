#!/bin/bash

# 複数のURLから並列でファイルをダウンロードする
curl -sO http://www.example.org/download/bigfile.dat &
curl -sO http://www.example.org/download/bigfile.dat &
curl -sO http://www.example.org/download/bigfile.dat &
