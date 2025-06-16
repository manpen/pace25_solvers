#!/bin/bash

test_solver() {
 UUID=$1
 BIN=$2
 SUBMISSION=$3
 ARGS=$4
 docker run --rm -v `pwd`/logs:/stride-logs p25_dse_$SUBMISSION \
    /runner run -S $UUID -b $BIN -T 300 -G 10 -w "nodes > 0" -j 120 $ARGS
}

test_solver 1373990e-4a86-11f0-9d54-5b06356eb246 /exact oblx   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb240 /exact alpaca   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb241 /exact bad   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb242 /exact2 bad   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb243 /exact fu_berlin   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb244 /exact heidelberg   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb245 /exact kulezi   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb247 /exact pace_yourself   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb248 /exact shadoks   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb249 /exact spefk   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb24a /exact swats   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb24b /exact uzl   
test_solver 1373990e-4a86-11f0-9d54-5b06356eb24c /exact vdhout   

