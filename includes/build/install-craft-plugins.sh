#!/bin/bash
set +e
cd /var/www/craft/plugins

# Install directory plugin
curl -o directory.zip https://dukt.net/craft/directory/download
unzip directory.zip -d directory.temp
mv directory.temp/*/directory .
rm -Rf directory.temp
set -e
