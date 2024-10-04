#!/usr/bin/env bash

declare -i tempcount=0
touch out error || exit
while [ $? -eq 0 ]
do
	tempcount=${tempcount}+1
	./randomfail_demo.sh >>out 2>>error  
done
cat out error
echo "after ${tempcount} tries, failed"
rm out error || exit
