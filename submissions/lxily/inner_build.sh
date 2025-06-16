#!/bin/bash
set -e
set -x

mv solver/tools/exception.h  solver/tools/Exception.h

g++ -o /heuristic -O2 -I . solver/lib/*.cpp solver/tools/*.cpp -std=c++2a

cd /
rm -rf code

# check:
cd / && /runner run -b /heuristic -T 10 -G 5 -w "nodes<10"