#!/bin/bash
#1. Get word/file list.
#2. Run awk.
#3. Make sure results are correctly formatted.
PATH="$PATH:/u/polm/noriega"

#Behavior: Assume every file from $1 down is one article in the corpus. 
# Pump results to stdout.
find "$1" -type f > /tmp/$$.files
getwordlist.sh /tmp/$$.files > /tmp/$$.words
noriega /tmp/$$.files /tmp/$$.words > output.$1
#sort -n -r

