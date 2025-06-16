#!/bin/bash
set -e
set -x

cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release --parallel
cmake --install build --config Release --prefix install
cp /install/bin/pace2025_ds_heuristic /heuristic

cd /
rm -rf code

# check:
cd / && /runner run -b /heuristic -T 10 -G 5 -w "nodes<10"