#!/bin/bash

# Check if directory is provided
if [ $# -eq 0 ]; then
    DIR="."
else
    DIR="$1"
fi

echo "File count by type in directory: $DIR"
echo "-----------------------------------"

# Count files by extension
echo "Text files (*.txt): $(find "$DIR" -maxdepth 1 -name "*.txt" | wc -l)"
echo "Shell scripts (*.sh): $(find "$DIR" -maxdepth 1 -name "*.sh" | wc -l)"
echo "C files (*.c): $(find "$DIR" -maxdepth 1 -name "*.c" | wc -l)"
echo "Header files (*.h): $(find "$DIR" -maxdepth 1 -name "*.h" | wc -l)"

# Count total files
echo "-----------------------------------"
echo "Total files: $(find "$DIR" -maxdepth 1 -type f | wc -l)"
