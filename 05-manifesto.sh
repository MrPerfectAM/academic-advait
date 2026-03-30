#!/bin/bash
# Author: advaitsood095 (24BEY10027)
# Purpose: Use 'read -p' to ask 3 interactive questions, construct a paragraph injecting the answers, and append it to a .txt file named after the user.

echo "================================================================================"
echo "                   Python AUDIT - MANIFESTO GENERATOR            "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite programming language? " language
read -p "What is your favorite open-source project? " project

echo "As a developer, $name believes in the power of $language to create innovative solutions. $name is particularly fond of the $project, which has inspired them to contribute to the open-source community. By embracing open-source principles, $name aims to make a positive impact on the world through technology."

echo "As a developer, $name believes in the power of $language to create innovative solutions. $name is particularly fond of the $project, which has inspired them to contribute to the open-source community. By embracing open-source principles, $name aims to make a positive impact on the world through technology." >> $(whoami).txt
echo "================================================================================"