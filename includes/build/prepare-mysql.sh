#!/bin/bash
set -e

sudo chmod 777 /tmp

[[ ! -d /var/lib/mysql ]] && mysql_install_db

mysqld_safe 2>&1 &

set +e
MYSQL_STATUS=1
while [[ MYSQL_STATUS -ne 0 ]]; do
    echo "Waiting MySQL"
    sleep 4
    mysql -e "status"
    MYSQL_STATUS=$?
done
set -e

echo "MySQL is running"
mysql -e "CREATE DATABASE ${CRAFT_DB_NAME} CHARACTER SET utf8 COLLATE utf8_unicode_ci;"

echo "Database ${CRAFT_DB_NAME} created"
echo "Stopping MySQL"
mysqladmin shutdown
