#!/bin/bash

size=$1
arr=()
adds=(1 2 3 4 5)

while true
do
	arr+=(${adds[@]})
	if [ "${#arr[@]}" -gt "$size" ]
	then
		break
	fi
done

