#!/bin/bash

for ip in "$@";
do
	ping "192.168.1.$ip" -c 1
done
