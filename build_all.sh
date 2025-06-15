#/bin/bash
set -e
set -x

pace25_ds_base/build.sh

submissions/pace_yourself/build_image.sh
submissions/uzl/build_image.sh
submissions/heidelberg/build_image.sh