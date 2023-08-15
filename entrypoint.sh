#!/usr/bin/env bash

echo "Hello $1"
time=$(date)
echo "time=$time" >> "$GITHUB_OUTPUT"
echo "python execution"
bash -c "time python -V"
/bin/pwd

# run debug from both image & workspace, if present
set -x
for f in /debug-image-helper.sh debug-action-helper.sh; do
    type $f
    [[ -x "$f" ]] && $f
done
set +x

declare -p ${!GIT*}

echo "done"
