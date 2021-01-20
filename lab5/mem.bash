#!/bin/bash

echo "" > report.log

arr=()
adds=( 1 2 3 4 5 )

count=0

while true
do
	let count++
	arr+=(${adds[@]})
	if [[ $count == 100000 ]]
	then
		count=0
		echo "${#arr[@]}" >> report.log
	fi
done
