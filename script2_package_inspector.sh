#!/bin/bash
# Script 2 - check if package is installed

pkg="git"

echo "Checking package..."

if dpkg -l | grep -w "$pkg" >/dev/null 2>&1
then
    echo "$pkg is installed"
    dpkg -l | grep -w "$pkg" | awk '{print "Version:", $3}'
else
    echo "$pkg is NOT installed"
fi

echo ""

# small description using case
case $pkg in
    git)
        echo "Git is used for version control (very useful tool)"
        ;;
    apache2)
        echo "Apache is a web server"
        ;;
    mysql)
        echo "MySQL is used for databases"
        ;;
    *)
        echo "Some open source software"
        ;;
esac
