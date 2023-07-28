#!/usr/bin/env bash

echo "Hello $1"
time=$(date)
echo "time=$time" >> "$GITHUB_OUTPUT"
echo "python execution"
bash -c "time python -V"

set -o nullglob
set -x
for f in commands.*; do
    $f
done
