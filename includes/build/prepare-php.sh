#!/bin/bash
set -e

sed -ri \
    -e "s/variables_order.*/variables_order = \"EGPCS\"/g" \
    -e "s/^upload_max_filesize.*/upload_max_filesize = ${PHP_UPLOAD_MAX_FILESIZE}/" \
    -e "s/^post_max_size.*/post_max_size = ${PHP_POST_MAX_SIZE}/" /etc/php5/apache2/php.ini

php5enmod mcrypt

