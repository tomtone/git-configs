#!/bin/bash
file_size=`git rev-list --objects HEAD | git cat-file --batch-check="%(objectsize) %(rest)" | cut -d" " -f1 | paste -s -d + - | bc | numfmt --to=iec-i --suffix=B --format="%.3f"`
echo "repository size: $file_size"