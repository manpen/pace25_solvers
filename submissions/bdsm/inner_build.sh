#!/bin/bash
set -e
set -x

mkdir build-release && pushd build-release
cmake .. # by default we have CMAKE_BUILD_TYPE=Release
make -j
mv ogdf_dsexact /exact
mv ogdf_dsexact2 /exact2

cd /
/runner run -b /exact -T 10 -G 5 -w "nodes<10"
/runner run -b /exact2 -T 10 -G 5 -w "nodes<10"