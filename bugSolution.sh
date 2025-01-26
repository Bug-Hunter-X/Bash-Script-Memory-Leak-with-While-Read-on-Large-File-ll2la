#!/bin/bash

# This script uses mapfile to process large files efficiently.
# It avoids the memory problems associated with while read.

mapfile -t lines < "large_file.txt"

# Process each line
for line in "${lines[@]}"; do
  echo "Processing: $line"
done