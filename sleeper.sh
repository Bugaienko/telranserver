#!/bin/bash

for i in {1..10}

do
date +"%H:%M:%S"
# sleep 5
top | head -2 | tail -1 > tmp.txt
PROCC=cat | awk '{print$2}' tmp.txt
echo "$PROCC"
done

cat /etc/os-release | head -1 > sysinfo.txt

cat /etc/os-release | grep -w NAME | sed 's/NAME="//g' | sed 's/"//g' > sys2.txt
#cat sys2.txt | sed 's/"//g' > sys3.txt

mkdir -p tmp
for nam in {50..100}
do
touch tmp/$nam.txt
done
