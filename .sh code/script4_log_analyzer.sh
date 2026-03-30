#!/bin/bash
# Script 4 - simple log analyzer

file=$1
word=${2:-error}
count=0

if [ -z "$file" ]
then
    echo "Usage: ./script.sh <logfile> [word]"
    exit
fi

if [ ! -f "$file" ]
then
    echo "File not found"
    exit
fi

while read line
do
    echo "$line" | grep -i "$word" >/dev/null
    if [ $? -eq 0 ]
    then
        count=$((count+1))
    fi
done < "$file"

echo ""
echo "'$word' found $count times"

echo ""
echo "Last few lines:"
grep -i "$word" "$file" | tail -5
