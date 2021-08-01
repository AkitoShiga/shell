#!/bin/bash

update_prefecture1()
{
    echo "[update_prefecture1] $prefecture"
    prefecture=Aomori
    echo "[update_prefecture1] $prefecture"
}

update_prefecture2()
{
    local prefecture=Iwate
    echo "[update_prefecuture2] $prefecture"
    update_prefecture1
    echo "[update_prefecuture2] $prefecture"
}

prefecture=Hokkaido
echo "$prefecture"
update_prefecture2
echo "$prefecture"


