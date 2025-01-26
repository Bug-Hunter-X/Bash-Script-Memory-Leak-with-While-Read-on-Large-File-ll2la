# Bash Script Memory Leak with While Read on Large File

This repository demonstrates a common performance issue in Bash scripts when processing large files line by line using a `while read` loop.  The script consumes excessive memory, leading to slowdowns or crashes for very large input files.

A more efficient solution using `mapfile` is provided to address this issue.

## Problem

The `bug.sh` script reads a large file line by line using the traditional `while read` loop. This approach loads the entire line into memory before processing, causing high memory consumption for large files.

## Solution

The `bugSolution.sh` script provides a more efficient solution using `mapfile`. `mapfile` reads the entire file into an array, but it handles memory management more effectively for large files.