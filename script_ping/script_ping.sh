#!/bin/bash

read -p "Please input adress for ping:" Adress
limit_ping_time=10
max_failures=3
failures=0

while true;
do
result_ping=$(ping -c 1 "$Adress" | grep 'icpm_seg')
time_ping=$(echo "$result_ping" | awk -F'=' '{print$4}' | awk '{print $1}' | awk -F '.' '{print $1}')

if [ -n "$time_ping" ] && [ "$time_ping" -gt "$limit_ping_time" ]; then
echo "Ping $Adress is over the limit $limit_ping_time ms: $time_ping ms"
fi

if [ -z "$time_ping" ]; then
echo "Ping $Adress is not complete"
((failures++))
else
echo "Ping $Adress is complete: $time_ping ms"
failures=0
fi

if [ "$failures" -ge "$max_failures" ]; then
echo "The maximum number if unsuccesseful attempts has been exceeded!"
failures=0
fi
sleep 1
done
