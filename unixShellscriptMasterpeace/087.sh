#!/bin/bash

loadconf() {
    . ./setting.conf
}

trap  'loadconf' HUP

loadconf

while :
do
    uptime >> ${UPTIME_FILENAME}
    sleep 1
done
