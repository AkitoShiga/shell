#!/bin/bash

DBHOST="localhost"
DBUSER="backup"
DBPASS="pass"
DBNAME="db"

BACKUP_DIR="/home/user/backup"
BACKUP_ROTATE=3
MYSQLDUM="/user/bin/mysqldump"

if [ ! -d "$BACKUP_DIR" ]; then
    echo "not exists : $BACKUP_DIR" >&2
    exit 1
fi

today=$(date '+%Y%m%d')

# mysqldumでDBのバックアップを取得
$mysqldump -h "${DBHOST}" -u "{$DBUSER}" -p"${DBPASS}" "${DBNAME}" >
"${BACKUP_DIR}/${DBNAME}-${TODAY}.dump"

if [ $? -eq 0 ]; then
    gzip "${BACKUP_DIR}-${today}.dump"

    find "$backup_dir" -name "${DBNAME}-*.dump.gz" -mtime +${BACKUP_ROTATE} | xargs rm -f
else
    echo "failed ${BACKUP_DIR}/${DBNAME}-${today}.dump"
    exit 2
fi
