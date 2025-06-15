#!/bin/bash
set -e
set -x


curl -Lo SCIPOptSuite.deb https://github.com/scipopt/scip/releases/download/v922/SCIPOptSuite-9.2.2-Linux-ubuntu22.deb
dpkg -i SCIPOptSuite.deb 
rm SCIPOptSuite.deb

mkdir -p /solver/external
cd /solver/external

#
git clone --depth 1 https://github.com/scipopt/SCIPpp
cd SCIPpp
cmake .
make ScipPP -j
cd ..

#
git clone -b rel-2.1.3 --depth 1 https://github.com/arminbiere/cadical.git
cd cadical 
./configure 
make -j
cd ..


git clone -b rel-4.0.2 --depth 1 https://github.com/arminbiere/kissat.git
cd kissat 
./configure --ultimate --sat 
make -j
cd ..


git clone --depth 1 https://bitbucket.org/coreo-group/maxpre2.git
cd maxpre2 
sed -i -e 's/-g/-DNDEBUG/g' src/Makefile
sed -i -e 's/-O2/-O3/g' src/Makefile 
sed -i -e 's/-g/-DNDEBUG/g' src/satsolver/solvers/glucose3/Makefile 
sed -i -e 's/-O2/-O3/g' src/satsolver/solvers/glucose3/Makefile
make lib -j

cd /code
cp CMakeLists.txt alpaca.cpp main.cpp /solver

cd /solver
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j
cp build/alpaca /exact

# check:
cd / && /runner run -b /exact -T 10 -G 5 -w "nodes<10"
