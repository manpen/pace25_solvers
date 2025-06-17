#!/bin/bash
set -e
set -x

curl -o scipoptsuite-9.2.1.tgz https://scipopt.org/download/release/scipoptsuite-9.2.1.tgz

# build using more cores
perl -pi -e 's/^make /make -j /' *.sh
perl -pi -e 's/^cmake --build ./cmake --build . -j /' *.sh
perl -pi -e 's/git\@github.com:/https:\/\/github.com\//' *.sh

./get_uwrmaxsat_dep.sh
./get_dep.sh
make -j

#mv EXACT /exact
#mv HEURISTIC /heuristic

echo '#!/bin/sh' > /exact
echo 'cd /code' >> /exact
echo '/code/EXACT' >> /exact

echo '#!/bin/sh' > /heuristic
echo 'cd /code' >> /exact
echo '/code/HEURISTIC' >> /heuristic

chmod +x /exact /heuristic

cd /
/runner run -b /exact -T 10 -G 5 -w "nodes<10"