#/bin/bash
set -e
set -x

echo "WARNING: Fetching submodule will take some time!!!"
git submodule update --init --recursive

pace25_ds_base/build_image.sh


ls -1 submissions/*/build_image.sh | \
    parallel {}

