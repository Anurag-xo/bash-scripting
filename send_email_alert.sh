#!/bin/bash


FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d %)
TO=anuragrko42004@gmai.com

if [[ $FU -ge 2 ]]
then
        echo "Warning, disk space is low -$FU %" | mail -s "DISK SPACE ALERT!" $TO
else
        echo "ALl Good"
fi

