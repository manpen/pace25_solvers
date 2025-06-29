#!/bin/bash
set -e
set -x

g++ -O3 ./main.cpp -o /heuristic

cd /
rm -rf code

# check:
cd / && /runner run -b /heuristic -T 10 -G 5 -w "nodes<10"