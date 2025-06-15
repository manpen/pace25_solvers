#/bin/bash
set -e
set -x

git submodule update --init --recursive

pace25_ds_base/build.sh

submissions/pace_yourself/build_image.sh
submissions/uzl/build_image.sh
submissions/heidelberg/build_image.sh
submissions/bad/build_image.sh
submissions/fu_berlin/build_image.sh
submissions/shadoks/build_image.sh
