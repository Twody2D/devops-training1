#!/bin/bash

echo "========================"
echo "    SERVER REPORT"
echo "========================"
echo ""

SERVER_NAME=$(hostname)
IP_ADDRESS=$(hostname -I)
DATE=$(date +"%Y-%m-%d %H:%M:%S")
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo -e "Hostname:\n$SERVER_NAME\n"

echo -e "Date:\n$DATE\n"

echo -e "IP address:\n$IP_ADDRESS\n"

echo "Memory:"
free -h
echo ""

echo "Disk:"
df -h
echo ""

if systemctl is-active --quiet nginx
then
	echo "Nginx OK"
else
	echo "Nginx Down"
fi
echo ""

echo -e "Disk usage:\n$DISK_USAGE%\n"

if [ "$DISK_USAGE" -gt 80 ]
then
        echo "WARNING: Disk usage is high!"
else
        echo "Disk usage OK"
fi
