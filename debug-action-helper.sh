#!/usr/bin/env bash

echo "Running $0"

# a file to try things without retagging

cat <<EOF | python3
import sys

print(sys.version)
EOF
