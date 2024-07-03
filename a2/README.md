# `backup.sh`

## What This Command Does

`backup.sh` is a shell script designed to create a compressed copy of a source directory and save the contents to a specified backup directory. 

## Why/When This Command Is Useful

This command is useful for creating periodic compressed backups of important directories. By creating these backups, it provides a fallback incase things go awry.

## How You Can Use This Command

To use this command, provide two arguments:
1. The source directory to back up.
2. The backup directory where the compressed backup will be stored.

## Usage

./backup.sh <source_directory> <backup_directory>

(For example, when there is source directory a and backup directory b, both within the same directory.)

./backup.sh a b
