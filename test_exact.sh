#!/bin/bash

test_solver() {
 UUID=$1
 BIN=$2
 SUBMISSION=$3
 ARGS=$4
 docker run -m 450G --rm -v `pwd`/logs:/stride-logs p25_dse_$SUBMISSION \
    /runner run -S $UUID -b $BIN -T 300 -G 10 -w "nodes > 0" -j 60 $ARGS
}

test_solver 1373990e-4a86-11f0-9d54-5b06356eb440 /exact alpaca   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb441 /exact bdsm -c
test_solver 1373990e-4a86-11f0-9d54-5b06356eb442 /exact2 bdsm -c 
test_solver 1373990e-4a86-11f0-9d54-5b06356eb443 /exact fu_berlin   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb444 /exact heidelberg   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb445 /exact kulezi   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb447 /exact pace_yourself   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb448 /exact shadoks   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb449 /exact spefk   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb44a /exact swats   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb44b /exact uzl   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb44c /exact vdhout   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb446 /exact oblx  # OBLX misbehaves and starts tons of processes.

