#!/bin/bash
set -e
set -x

mkdir release 
cd release 
cmake -DCMAKE_BUILD_TYPE=Release .. 
make -j
mv main.out /exact

cd /
rm -rf code

# check:
cd / && /runner run -b /exact -T 10 -G 5 -w "nodes<10"