#!/usr/bin/env bash

echo "Hello $1"
time=$(date)
echo "time=$time" >> "$GITHUB_OUTPUT"
echo "python execution"
bash -c "time python -V"

shopt -s nullglob
# run debug from both image & workspace, if present
for f in /commands.* commands.*; do
    $f
done

echo "done"
