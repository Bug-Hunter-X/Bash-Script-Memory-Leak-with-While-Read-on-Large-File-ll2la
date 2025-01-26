#!/bin/bash

# This script attempts to process a large file line by line.
# However, it uses a while loop that is inefficient for large files.

while IFS= read -r line; do
  # Process each line
  echo "Processing: $line"
done < "large_file.txt"

# This causes a very large file to consume lots of memory due to the way Bash's read command interacts with large files