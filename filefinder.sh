#!/bin/bash

# Prompt user for the file name
read -p "Enter the file name or part of it: " filename

# Search for the file using find and filter the result with grep
result=$(find / -type f 2>/dev/null | grep "$filename")

# Check if any files were found
if [ -n "$result" ]; then
  echo "Files found:"
  echo "$result"
else
  echo "No matching files found on the system."
fi

