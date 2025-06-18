#!/bin/bash
test_solver() {
 UUID=$1
 BIN=$2
 SUBMISSION=$3
 docker run -v `pwd`/bench_logs:/stride-logs --rm p25_dse_$SUBMISSION \
    /runner run -S $UUID -b $BIN -T 300 -G 25 -i stride-logs/pace25h.txt
}

mkdir -p bench_logs
cp pace25h.txt bench_logs

test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic fu2025_pace1
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic fu2025_pace2
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic shadoks
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic fontan
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic lxily
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic g2liuzhaojie
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic b2corner 
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic xinyepeng
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic mennemann
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic greeduce
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic swats
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /heuristic samu_f
test_solver 34b44b5c-4bb9-11f0-9045-1347e3725109 /code/HEURISTIC heidelberg
