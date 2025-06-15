#!/bin/bash
set -e

. /root/.cargo/env

cd /code
cargo b -r --bin runner
mv target/release/runner /runner
cd /
rm -rf code

./runner update