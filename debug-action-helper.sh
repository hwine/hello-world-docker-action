#!/usr/bin/env bash

set -x
echo debug-action-helper.sh
echo "0=:$0: @=:$@:"
echo "Running $0"
pwd

# a file to try things without retagging

cat <<EOF | python3
import sys

print(sys.version)
EOF
