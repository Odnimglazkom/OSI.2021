#!/bin/bash

echo "" > report2.log

arr=()
adds=( 1 2 3 4 5 )

count=0

while true
do
	let count++
	arr+=(${adds[@]})
	if [[ $count == 10000 ]]
	then
		count=0
		echo "${#arr[@]}" >> report2.log
	fi
done
