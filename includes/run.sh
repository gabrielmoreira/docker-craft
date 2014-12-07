#!/bin/bash
set -e
if [ -f /first-run ];
then
	/build/prepare-craft.sh
fi
echo "Ok"
supervisord -n -c /etc/supervisor/supervisord.conf