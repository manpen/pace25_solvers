#!/bin/bash
set -e
set -x

mkdir build
cd build
cmake ..
make -j
mv pace2025 /exact

# check:
cd / && /runner run -b /exact -T 10 -G 5 -w "nodes<10"

