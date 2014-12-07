#!/bin/bash
set -e
source /etc/apache2/envvars
exec apache2 -D FOREGROUND