#!/usr/bin/env bash

echo
echo ================== debug action helper start ==============================
echo
set -x
echo debug-action-helper.sh
echo "0=:$0: @=:$@:"
echo "Running $0"
/bin/pwd

# a file to try things without retagging

cat <<EOF | python3
import sys

print(sys.version)
EOF

set +x

declare -p ${!GIT*}

echo
echo ================== debug action helper end ==============================
echo
