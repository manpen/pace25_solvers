#!/bin/bash
set -e
set -x

pip3 install -r SCIP-requirements.txt

cp SCIP.py /exact

# check:
cd / && /runner run -b /exact -T 10 -G 5 -w "nodes<10"