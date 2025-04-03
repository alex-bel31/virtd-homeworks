#!/bin/bash

source /opt/backup/scripts/.env

DATE=$(date +\%Y\%m\%d\%H\%M\%S)

docker run --rm --network shvirtd-example-python_backend \
    -v $BACKUP_DIR:/backup \
    mysql:8 mysqldump -h $DB_HOST -u$DB_USER -p$DB_PASSWORD --result-file=/backup/dump_$DATE.sql $DB_NAME
