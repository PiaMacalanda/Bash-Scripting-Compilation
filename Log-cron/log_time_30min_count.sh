#!/bin/bash

# This script writes to a NEW log.txt file and counts how many times the log has been updated

# Define the log file locations
LOG_FILE="Log-cron/new_log.txt"
COUNT_FILE="Log-cron/update_30min_count.txt"

# Append the current date, time, and GitHub username to the new log file
echo "Current Date and Time: $(date) - Log updated by: $GITHUB_ACTOR" >> $LOG_FILE

# Increment the update count and append it to the update_count.txt file
if [ -f "$COUNT_FILE" ]; then
  # Read the current count and increment it
  COUNT=$(cat $COUNT_FILE)
  COUNT=$((COUNT + 1))
else
  # Initialize the counter if the file does not exist
  COUNT=1
fi

# Write the updated count back to update_30min_count.txt
echo $COUNT > $COUNT_FILE
