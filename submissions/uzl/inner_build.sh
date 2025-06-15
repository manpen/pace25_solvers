#!/bin/bash
set -e
set -x

. /root/.cargo/env
cargo b -r
mv target/release/uzl_ds /exact