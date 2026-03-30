#!/bin/bash
# Script 1 - System Info (basic system intro)

name="Pragya Pandey"
software="Git"

kernel=$(uname -r)
user=$(whoami)
home=$HOME
uptime=$(uptime -p)
date_now=$(date)

# getting distro name
distro=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "-------------------------------"
echo " Open Source Audit Project"
echo "-------------------------------"
echo "Student  : $name"
echo "Software : $software"
echo ""
echo "Distro   : $distro"
echo "Kernel   : $kernel"
echo "User     : $user"
echo "Home Dir : $home"
echo "Uptime   : $uptime"
echo "Date     : $date_now"
echo ""
echo "License  : Linux Kernel (GPL v2)"
echo "-------------------------------"
