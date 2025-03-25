#!/bin/bash

for i in {1..10}; do
CURRENT_TIME=$(date +"%H:%M:%S")
COUNT=$(ps aux --no-heading | wc -l)

echo "Current Time: $CURRENT_TIME,Count: $COUNT"

sleep 2

done

cat /proc/cpuinfo > /opt/131224-wdm/AlexN/proc_info.txt

 grep ^Name= /etc/os-release | awk -F "\"" '{print $2}' >> /opt/131224-wdm/AlexN/proc_info.txt

mkdir -p /opt/131224-wdm/AlexN/files

for i in {50..100}; do
touch /opt/131224-wdm/AlexN/files/$i.txt
done


