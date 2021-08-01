#!/bin/bash

if [ "$1" '=' yes ]; then
    echo YES
else
    echo NO
fi

if cd "$1" ; then
    echo OK
else
    echo NO
fi
