#!/bin/bash
set -e
set -x

mv /code/OBLX-exact.jar /
cd /
rm -rf code

## check:
cd / && /runner run -b /exact -T 10 -G 5 -w "nodes<10"