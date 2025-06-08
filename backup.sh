#!/bin/bash -e
cd "$(dirname "$0")"
source .envrc
restic backup --exclude-file excludes.txt -v ~/
