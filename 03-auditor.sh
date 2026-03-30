#!/bin/bash
# Author: advaitsood095 (24BEY10027)
# Purpose: Define an array of directories and dynamically append 2 specific paths for Python. Loop through them, check existence, and use 'awk' to extract size, permissions, and owner into clean columns.

dirs=(/etc /var/log /usr/bin /var/www)
dirs+=(/usr/lib/python3 /usr/bin/python3)

echo "================================================================================"
echo "                   Python AUDIT - DIRECTORY AUDITOR               "
echo "================================================================================"

echo "Directory          Size         Permissions  Owner"

echo "--------------------------------------------------------------------------------"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    size=$(du -sh "$dir" | awk '{print $1}')
    perms=$(stat -c "%a" "$dir")
    owner=$(stat -c "%U" "$dir")
    echo "$dir          $size         $perms         $owner"
  else
    echo "$dir          NOT FOUND"
  fi
done
echo "================================================================================"