#!/bin/bash

usage() {
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
}

# Check if 2 directories
if [ "$#" -ne 2 ]; then
    usage
fi

# Assign arguments to variables
source_directory=$1
backup_directory=$2

# Check if source even exists
if [ ! -d "$source_directory" ]; then
    echo "Error: Source directory $source_directory does not exist."
    exit 1
fi

# Create backup if it doesn't exist
mkdir -p "$backup_directory"

# Create backup
timestamp=$(date +%Y%m%d_%H%M%S)
backup_name="backup_${timestamp}.tar.gz"
tar -czf "$backup_directory/$backup_name" -C "$source_directory" .
if [ $? -eq 0 ]; then
    echo "Backup of $source_directory created at $backup_directory/$backup_name"
else
    echo "Error creating backup"
    exit 1
fi

