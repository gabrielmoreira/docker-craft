#!/bin/bash
set -e
if [ -f /first-run ];
then
	/build/prepare-craft.sh
	rm -f /first-run
fi
supervisord -n -c /etc/supervisor/supervisord.conf
