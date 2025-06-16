#!/bin/bash
set -e
set -x

perl -pi -e 's/-fipa-reorder-for-locality//' Makefile
make -j release
mv build/release/heuristic_solver /heuristic

cd /
rm -rf code

# check:
cd / && /runner run -b /heuristic -T 10 -G 5 -w "nodes<10"