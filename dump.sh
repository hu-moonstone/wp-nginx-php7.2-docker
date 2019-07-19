#!/bin/sh
docker exec -it wp-nginx-php72_db_1 sh -c 'mysqldump wordpress -u wordpress -ppassword 2> /dev/null' > db/dump/mysql.dump.sql
