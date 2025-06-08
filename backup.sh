#!/bin/bash -e
cd "$(dirname "$0")"
source .envrc
restic backup --exclude-file excludes.txt -v ~/ -o s3.connections=10 --read-concurrency 4 --compression max --skip-if-unchanged
restic forget --keep-daily 7 --keep-weekly 4 --keep-monthly 6
restic prune
