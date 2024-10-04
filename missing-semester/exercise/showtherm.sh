#/usr/bin/env bash

for file in $(find /sys -name "therm*")
do
	cat "$file"
done
