#!/bin/bash
set -e
set -x

echo '#include <climits>' > tmp.cpp
cat MDS.cpp >> tmp.cpp

g++ -std=c++17 -O3 tmp.cpp -o /heuristic

cd /
rm -rf code

# check:
cd / && /runner run -b /heuristic -T 10 -G 5 -w "nodes<10"