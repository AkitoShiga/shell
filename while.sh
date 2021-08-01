#!/bin/bash

i=0
while [[ $i -lt 10000 ]]
do
    echo "$i"
    i=$(( i + 3 ))
done
    
