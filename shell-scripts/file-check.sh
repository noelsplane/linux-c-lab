#!/bin/bash

# Check if a file path is provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a file path"
    exit 1
fi

# Check if file exists and show details
if [ -f "$1" ]; then
    echo "File exists:"
    ls -l "$1"
    echo "File type:"
    file "$1"
else
    echo "File does not exist: $1"
fi
