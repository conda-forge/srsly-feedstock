#!/usr/bin/env bash

set -ex -o pipefail

# remove vendored copies of cloudpickle and ujson, 
# these are now runtime dependencies of the package.
rm -rf "${SRC_DIR}/srsly/cloudpickle"
rm -rf "${SRC_DIR}/srsly/ujson"
rm -rf "${SRC_DIR}/srsly/tests/cloudpickle"
rm -rf "${SRC_DIR}/srsly/tests/ujson"

"${PYTHON}" -m pip install . --no-deps -vv
