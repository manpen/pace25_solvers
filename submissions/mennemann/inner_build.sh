#!/bin/bash
set -e
set -x

mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ../solver
make -j
mv mds /heuristic

cd /
rm -rf code

# check:
cd / && /runner run -b /heuristic -T 10 -G 5 -w "nodes<10"