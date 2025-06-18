#!/bin/bash

test_solver() {
 UUID=$1
 BIN=$2
 SUBMISSION=$3
 docker run --rm p25_dse_$SUBMISSION \
    /runner run -S $UUID -b $BIN -T 10 -G 2 -w "nodes < 200"
}

test_solver 1aa9fb30-4ad8-11f0-9468-23d032229830 /code/HEURISTIC heidelberg
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229831 /heuristic fu2025_pace1
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229832 /heuristic fu2025_pace2
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229833 /heuristic shadoks
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229834 /heuristic fontan
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229835 /heuristic lxily
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229836 /heuristic g2liuzhaojie
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229837 /heuristic b2corner 
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229838 /heuristic xinyepeng
test_solver 1aa9fb30-4ad8-11f0-9468-23d032229839 /heuristic mennemann
test_solver 1aa9fb30-4ad8-11f0-9468-23d03222983a /heuristic greeduce
test_solver 1aa9fb30-4ad8-11f0-9468-23d03222983b /heuristic swats
test_solver 1aa9fb30-4ad8-11f0-9468-23d03222983c /heuristic samu_f
