#!/bin/bash
#Copyright VigåLAN 2018 GNU gpl. v3

DEF=$(tput sgr0)
GREEN=$(tput setaf 2)
network="192.168.0."
host="1"

while [[ "$host" -ne "255" ]]; do
ping -c 1 -q -t 1 -n -i 0.4 -W 1 $network$host 2>&1>/dev/null && echo "$network$host ${GREEN}UP${DEF}"
((host++))
sleep 0.1
done
