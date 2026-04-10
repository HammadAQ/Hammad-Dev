#!/bin/bash

# Script: my-first-script.sh
# Author: Hammad
# Date: April 2026
# Description: My first bash script —
# a system information & security checker
# built as part of my DevSecOps learning

# --- Variables ---
NAME="Hammad"
ROLE="Aspiring DevSecOps Engineer"
DATE=$(date)

# --- Welcome ---

echo "        My First Bash Script"
echo "Author: $NAME"
echo "Role:   $ROLE"
echo "Date:   $DATE"
echo ""

# --- System Info ---
echo "         System Information"
echo "Hostname:  $(hostname)"
echo "User:      $(whoami)"
echo "Directory: $(pwd)"
echo ""

# --- Disk Check ---
echo "          Disk Space Check"
df -h /
echo ""

# --- Memory Check ---
echo "          Memory Usage"
free -h
echo ""

# --- Security Check ---
echo "       Basic Security Check"
FREE_SPACE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ $FREE_SPACE -gt 80 ]; then
    echo " ALERT: Disk ${FREE_SPACE}% full — action required!"
else
    echo " Disk health: ${FREE_SPACE}% used"
fi

echo ""
echo "    Script Complete! Keep Learning "
