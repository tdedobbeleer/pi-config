#!/bin/sh

mysqldump -h $server -P 3306 -u user -p${DB_PASSWORD} ${DB_NAME} | gzip > /pi/mysql/db_`date +"%d%m%Y"`.sql.gz

#Remove files older than 60 days
find /pi/mysql/db_* -type f -mtime +60 -delete
