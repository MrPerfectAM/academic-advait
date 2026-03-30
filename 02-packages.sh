#!/bin/bash
# Author: advaitsood095 (24BEY10027)
# Purpose: Use OS-detection to define the correct package name for Python. Check installation status and extract the exact version.

echo "================================================================================"
echo "                   Python AUDIT - PACKAGE INSPECTOR                 "
echo "================================================================================"

case $(lsb_release -is) in
  Ubuntu|Debian)
    package_name="python3"
    ;;
  CentOS|RedHat)
    package_name="python3"
    ;;
  *)
    echo "Unsupported OS."
    exit 1
    ;;
esac

echo "Status: $package_name is $(dpkg -s $package_name &> /dev/null && echo "INSTALLED" || echo "NOT INSTALLED") on this $(lsb_release -is) system."
echo "Version: $(python3 --version)"
echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Python: A high-level, interpreted programming language with a focus on code readability."
echo " - Linux: An open-source operating system that provides a free and customizable alternative to proprietary systems."
echo " - Git: A version control system that helps developers track changes in their codebase."
echo " - Vim: A text editor that provides a powerful and customizable editing experience."
echo "================================================================================"