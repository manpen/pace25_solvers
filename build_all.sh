#/bin/bash
set -e
set -x

echo "WARNING: Fetching submodule will take some time!!!"
git submodule update --init --recursive

pace25_ds_base/build_image.sh

submissions/pace_yourself/build_image.sh
submissions/uzl/build_image.sh
submissions/heidelberg/build_image.sh
submissions/bad/build_image.sh
submissions/fu_berlin/build_image.sh
submissions/shadoks/build_image.sh
submissions/spefk/build_image.sh
submissions/alpaca/build_image.sh
