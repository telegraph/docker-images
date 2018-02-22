#!/usr/bin/env bash
set -x

# Check if docker is running. if not... starts service
ps auxw | grep "docker" | grep -v grep > /dev/null
if [ $? != 0 ]; then
    service docker start
fi;

exec "$@"
