#!/bin/bash
set -e
set -x

. /root/.cargo/env
cargo b --profile optil -F optil
cp target/optil/{heuristic,exact} /
cd /
rm -rf code

# check:
cd / && /runner run -b /exact -T 10 -G 5 -w "nodes<10"