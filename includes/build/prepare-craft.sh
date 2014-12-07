#!/bin/bash
set -e

cd /var/www

chown -R www-data:www-data *
chmod -R 744 craft/app/
chmod -R 744 craft/config/
chmod -R 744 craft/storage/

mv html/htaccess html/.htaccess

. $(dirname $0)/prepare-mysql.sh
. $(dirname $0)/prepare-apache.sh
. $(dirname $0)/prepare-php.sh
. $(dirname $0)/install-craft-plugins.sh