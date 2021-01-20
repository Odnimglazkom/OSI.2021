#!/bin/bash
./fourthTask1.sh &
pid1=$!
./fourthTask2.sh &
pid2=$!
./fourthTask3.sh &
pid3=$!
renice 10 -p $pid1
kill $pid3
