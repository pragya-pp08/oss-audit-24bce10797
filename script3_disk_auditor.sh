#!/bin/bash
# Script 3 - checking folders (size + permissions)

dirs="/etc /var/log /home /usr/bin /tmp"

echo "----- Directory Report -----"

for d in $dirs
do
    if [ -d "$d" ]
    then
        perms=$(ls -ld $d | awk '{print $1,$3,$4}')
        size=$(du -sh $d 2>/dev/null | cut -f1)

        echo "$d"
        echo "Perms : $perms"
        echo "Size  : $size"
        echo "---------------------"
    else
        echo "$d not found"
    fi
done

echo ""

# checking git config file
if [ -f "$HOME/.gitconfig" ]
then
    echo "Git config file exists"
    ls -l $HOME/.gitconfig
else
    echo "No git config file found"
fi
