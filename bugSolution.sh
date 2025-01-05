#!/bin/bash

# This script processes files in a directory, handling the case where a file might be deleted.

for file in /path/to/files/*; do
  # Check if the file exists before processing
  if [ -f "$file" ]; then
    process_file "$file"
  else
    echo "Error: File '$file' not found. Skipping."
  fi
done

process_file() {
  echo "Processing file: $1"
  # ... process the file ...
} 