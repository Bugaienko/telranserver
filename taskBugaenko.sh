#!/bin/bash

# DATE=date +"%m%d%y"

for i in {1..10}

do
touch tmp/$i$(date +%m%d%y).txt
done
