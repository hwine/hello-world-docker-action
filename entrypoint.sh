#!/usr/bin/env bash

echo "Hello $1"
time=$(date)
echo "time=$time" >> "$GITHUB_OUTPUT"
echo "python execution"
bash -c "time python -V"

# run debug from both image & workspace, if present
for f in /debug-image-helper.sh debug-action-helper.sh; do
    [[ -x "$f" ]] && $f
done

echo "done"
