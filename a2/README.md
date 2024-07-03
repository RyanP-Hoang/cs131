# `backup.sh`

## What This Command Does

`backup.sh` is a shell script designed to create a compressed copy of a source directory and save the contents to a specified backup directory. 

## Why/When This Command Is Useful

This command is useful for creating periodic compressed backups of important directories. By creating these backups, it provides a fallback incase things go awry.

## How You Can Use This Command

To use this command, provide two arguments:
1. The source directory to back up. This source directory must exist.
2. The backup directory where the compressed backup will be stored. It will create a new backup directory if it doesn't exist

## Usage

./backup.sh <source_directory> <backup_directory>

For example, when there is source directory a with z.txt and an empty backup directory b, both within the same directory a2.

It will create a compressed backup named after the year, month, and day. When extracted, the contents of the source directory should appear.

## EXAMPLE

[ryansu24@sjsu a2]$ ./backup.sh a b

Backup of a created at b/backup_20240703.tar.gz

[ryansu24@sjsu a2]$ cd b

[ryansu24@sjsu b]$ ls

backup_20240703.tar.gz

[ryansu24@sjsu b]$ tar -xzf backup_20240703.tar.gz

[ryansu24@sjsu b]$ ls

backup_20240703.tar.gz  z.txt
