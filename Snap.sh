#!/bin/bash
# Script to take a snapshot of users every other hour
SNAPSHOT_DIR="/var/backups/user_snapshots"
LOG_FILE="/var/log/user_snapshot.log"
# Create snapshot directory if it doesn't exist
mkdir -p $SNAPSHOT_DIR
# Record date and list of users to the log file
date >> $LOG_FILE
awk -F: '$3 >= 1000 {print $1}' /etc/passwd | sort >> $LOG_FILE
echo "------------------------" >> $LOG_FILE
