#!/bin/bash
set -e
cd `dirname $0`
docker build -t pace25_ds_base . &
docker build -t pace25_ds_base24 -f Dockerfile24 . &
wait