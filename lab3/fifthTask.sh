#!/bin/bash
mkfifo mypipe
chmod +rw mypipe
./fifthHandler.sh &
./fifthGenerator.sh
rm -f mypipe
