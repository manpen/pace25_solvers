#!/bin/bash
set -e
cd `dirname $0`
docker build -t pace25_ds_base .