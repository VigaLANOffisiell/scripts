#!/bin/bash
#Copyright VigåLAN 2018 GNU gpl. v3
#Usage: ./preview.sh "your text goes here"

ut(){
offset=0
word="$1"
wlength="${#word}"
while [[ ${offset} -lt ${wlength} ]]; do
  toilet -S -W -t --font mono12  "${word:${offset}:1}" | lolcat
  sleep 0.1
#  clear
  (( offset++ ))
done
}

tput civis
while true; do
ut "$1"
done
tput cnorm
