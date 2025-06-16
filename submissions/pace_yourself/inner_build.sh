#!/bin/bash
set -e
set -x

curl -o solver.zip https://maxsat-evaluations.github.io/2024/mse24-solver-src/exact/unweighted/UWrMaxSat-SCIP-MaxPre.zip
unzip solver.zip UWrMaxSat-SCIP-MaxPre/bin/uwrmaxsat 
mv UWrMaxSat-SCIP-MaxPre/bin/uwrmaxsat / 
rm -rf solver.zip UWrMaxSat-SCIP-MaxPre 

curl -o solver.zip https://maxsat-evaluations.github.io/2024/mse24-solver-src/exact/unweighted/EvalMaxSAT_2024.zip
unzip solver.zip EvalMaxSAT_2024/bin/EvalMaxSAT
mv EvalMaxSAT_2024/bin/EvalMaxSAT /EvalMaxSAT_bin


. /root/.cargo/env
cargo b --profile optil -F optil
cp target/optil/{heuristic,exact} /
cd /
rm -rf code

# check:
cd /
/runner run -b /exact -T 10 -G 5 -w "nodes<10"
/runner run -b /heuristic -T 10 -G 5 -w "nodes<10"