#!/bin/bash
set -xe

chown -R mysql:mysql /var/lib
chown -R mysql:mysql /var/log
chown -R mysql:mysql /var/run

/usr/bin/supervisord

# adapted from: http://stackoverflow.com/a/20932423/1050649
while ( true )
  do
  echo "Detach with Ctrl-p Ctrl-q. Dropping to shell"
  sleep 1
  /bin/bash
done
