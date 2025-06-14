#!/bin/bash
set -e

mkdir -p /usr/src/app/tmp/sockets
mkdir -p /usr/src/app/tmp/pids

if [ -f /usr/src/app/tmp/pids/unicorn.pid ]; then
  rm /usr/src/app/tmp/pids/unicorn.pid
fi

exec "$@" 