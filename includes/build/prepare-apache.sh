#!/bin/bash
set -e

a2enmod rewrite

sed -ri \
    -e "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf
