#!/usr/bin/env bash

# Add commands to experiment with here -- doesn't require an action
# rebuild/reversion

date --iso=seconds
echo "PATH=$PATH"
type -a python3
type -a git
git status
git log
