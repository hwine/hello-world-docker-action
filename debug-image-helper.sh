#!/usr/bin/env bash

# Add commands to experiment with here -- doesn't require an action
# rebuild/reversion

echo
echo ==================== debug image helper start ========================
echo

set -x
echo debug-image-helper.sh
echo "0=:$0: @=:$@:"
/bin/pwd
ls -lRA
date --iso=seconds
echo "PATH=$PATH"
type -a python3
type -a git
git status
git log
set +x

declare -p ${!GIT*}

echo
echo ==================== debug image helper end ========================
echo
