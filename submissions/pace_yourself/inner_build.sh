#!/bin/bash
set -e
set -x

. /root/.cargo/env
cargo b --profile optil -F optil
cp target/optil/{heuristic,exact} /
cd /
rm -rf code