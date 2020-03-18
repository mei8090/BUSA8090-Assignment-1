#!/bin/bash

time=$(date +%I)
time_new=$(date +%M)
count=0
while test $count -lt $time; do
  echo -e "\a"
  sleep 1
  count=$[$count+1]
done

sleep 3

if test $time_new -ge 15 && test $time_new -lt 30; then
  echo -e "\a"
elif test $time_new -ge 30 && test $time_new -lt 45; then
  echo -e "\a"
  echo -e "\a"
elif test $time_new -ge 45 && test $time_new -lt 60; then
  echo -e "\a"
  echo -e "\a"
  echo -e "\a"
fi

