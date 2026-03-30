#!/bin/bash
# Script 5 - small manifesto generator

echo "Answer these:"

read -p "Tool you use daily: " tool
read -p "Freedom means (one word): " freedom
read -p "What will you build: " build

today=$(date)
file="my_manifesto.txt"

echo "Open Source Manifesto" > $file
echo "Date: $today" >> $file
echo "" >> $file

echo "I use $tool almost every day." >> $file
echo "For me, freedom means $freedom." >> $file
echo "If I build something, it would be $build and I would share it." >> $file

echo ""
echo "Saved in $file"
cat $file
