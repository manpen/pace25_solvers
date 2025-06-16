#!/bin/bash
set -e
set -x

pip3 install ortools

perl -pi -e 's/NuMVC\/NuMVC.h/NuMVC\/numvc.h/' src/CONTESTS/PACE25/DominatingSetSolver.cpp

mkdir build
cp solveCPSAT.py build/solveCPSAT.py
cd build
cmake ..
make -j
cp Pace25DSE /exact
cp Pace25DSH /heuristic

cd /
rm -rf code

# check:
cd / 
/runner run -b /exact -T 10 -G 5 -w "nodes<10"
/runner run -b /heuristic -T 10 -G 5 -w "nodes<10"
