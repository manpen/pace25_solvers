#!/bin/bash
cd `dirname $0`
SOLVER=$(basename `pwd`)
docker build -t "p25_dse_$SOLVER" .