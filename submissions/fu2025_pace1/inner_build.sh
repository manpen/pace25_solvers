#!/bin/bash
set -e
set -x

gcc -O3 -o /heuristic greedy.c
cd /

rm -rf code

# check:
cd /
#/runner run -b /heuristic -T 10 -G 5 -w "nodes<10"