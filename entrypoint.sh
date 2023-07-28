#!/usr/bin/env bash

set -x
echo "Hello $1"
time=$(date)
echo "time=$time" >> "$GITHUB_OUTPUT"
echo "python execution"
bash -c "time python -V"

shopt -s nullglob
for f in commands.*; do
    $f
done
