#!/usr/bin/env bash

sleep 5 &
pid1=$(pgrep -f 'sleep 5')
wait $pid1
ls
