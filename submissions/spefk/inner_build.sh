#!/bin/bash
set -e
set -x

. /root/.cargo/env
cargo build \
    --target x86_64-unknown-linux-gnu \
    --release \
    -p solver-pace2025 \
    --no-default-features \
    --features scip
mv target/x86_64-unknown-linux-gnu/release/solver-pace2025 /exact
mv `find target -name libscip.so.9.2` /usr/lib/

cd /
rm -rf code

# check:
cd / && /runner run -b /exact -T 10 -G 5 -w "nodes<10"