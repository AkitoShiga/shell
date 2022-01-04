#!/bin/bash

DBHOST='localhost'
DBUSER='user1'
DBPASS='password'
DBNAME='db'
MYSQL="/usr/bin/mysql"
csv_outputdir="/home/user1/output"
sqlfile="/home/user1/bin/select.sql"

if [ ! -f "$sqlfile" ];then
    echo "sql not exist : $sqlfile" >&2
    exit 1
file2
if [ ! -d "$csv_outputdir" ];then
    echo "CSV dir does not exist $csv_outputdir" >&2
    exit 1
fi
today=$(date '+%Y%m%d')
$MYSQL -h "${DBHOST}" -u "${DBUSER}" -p"${DBPASS}" -d "${DBNAME}" -N \< "$sqlfile | tr "\t" "," > "${csv_outputdir}"/data-${today}.csv"
