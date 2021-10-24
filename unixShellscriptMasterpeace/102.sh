#!/bin/bash

datafile="/home/user1/sample.dat"

if [ -f "$datafile" ]; then
    # ./myapp "$datafile"

    :
else
    echo "datafile does not exists: $1" <&2
    exist 100 1
fi
