#!/bin/bash

DBHOST="localhost"
DBUSER="dbuser"
DBPASS="dbpass"

MYSQL="/user/mysql"

resulttmp="tmp.$$"

$MYSQL -h "${DBHOST} -U "${DBUSER}" -p "${DBPASS}" -e "SHOW SLAVE STATUS \G" > $resulttmp

Slave_IO_Running=$(awk '/Slave_IO_Running:/ {print $2}' "$resulttmp")
Slave_SQL_Running=$(awk '/Slave_SQL_Running:/ {print $2}' "$resulttmp")
Last_IO_Error=$(awk '/Last_IO_Error:/ {print $2}' "$resulttmp")
Last_SQL_Error=$(awk '/Last_SQL_Error:/ {print $2}' "$resulttmp")

datae_str=$(date '+%Y/%m/%d %H:%M:%S')

if [ "$Slave_IO_Running" = "YES" -a "$Slave_SQL_Running" = "YES" ]; then
    echo "[$date_str] STATUS OK"
else
    echo "[$date_str] STATUS NG"
    echo "Slave_IO_Running: $Slave_IO_Running"
    echo "Slave_SQL_Running: $Slave_SQL_Running"
    echo "$Last_SQL_Error"
    echo "$Last_SQL_Error"

    /home/user1/bin/alert.sh
fi

rm -f "$resulttmp"
