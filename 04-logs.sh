#!/bin/bash
# Author: advaitsood095 (24BEY10027)
# Purpose: Accept a target log file as $1. Add a comment suggesting a realistic log path for Python. Use a 'while read' loop to count occurrences of a keyword ($2), then use 'tail' to print the last 5 matches.

# Suggested log path for Python: /var/log/python.log

echo "================================================================================"
echo "                   Python AUDIT - LOG FILE ANALYZER              "
echo "================================================================================"

count=0
while read -r line; do
  if [[ $line == *$2* ]]; then
    ((count++))
  fi
done < "$1"
echo "Found $count occurrences of '$2' in $1."

tail -n 5 "$1" | grep -i "$2"
echo "================================================================================"