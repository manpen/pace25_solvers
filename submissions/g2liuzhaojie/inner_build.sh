#!/bin/bash
set -e
set -x

git clone https://github.com/lxily/PACE2025.DS-HS.git other
mv other/solver/parallel_hashmap .

g++ -o /heuristic -O2 -I . *.cpp

cd /
rm -rf code

# check:
cd / 
# /runner run -b /heuristic -T 10 -G 5 -w "nodes<10"