#!/bin/bash
source config.env
set -e

echo "=========================="
echo "      Server Report"
echo "=========================="
echo ""

SERVER_NAME=$(hostname)
DATE=$(date +"%Y-%m-%d %H:%M:%S")
CURRENT_USER=$(whoami)
IP_ADDRESS=$(hostname -I)
MEM_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo -e "Hostname:\n$SERVER_NAME\n"
echo -e "Date:\n$DATE\n"
echo -e "User:\n$CURRENT_USER\n"
echo -e "IP address:\n$IP_ADDRESS\n"
echo -e "Memory usage:\n$MEM_USAGE%\n"

if [ "$MEM_USAGE" -gt "$MEMORY_LIMIT" ]
then
        echo "WARNING: Memory usage is high!"
else
        echo "Memory usage OK"
fi
echo ""

echo -e "Disk usage:\n$DISK_USAGE%\n"

if [ "$DISK_USAGE" -gt "$DISK_LIMIT" ]
then
        echo "WARNING: Disk usage is high!"
else
        echo "Disk usage OK"
fi
echo ""

if systemctl list-unit-files | grep -q nginx
then
	if systemctl is-active --quiet nginx
	then
		echo "Nginx OK"
	else
		echo "Nginx Down"
	fi
else
	echo "Nginx: NOT INSTALLED"
fi
echo ""
