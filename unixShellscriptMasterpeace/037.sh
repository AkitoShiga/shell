#!/bin/bash

# gzipの圧縮率を大きくする

tar cf archive.tar.log

gzip -9 archive.tar
