#!/bin/bash

process=$(ps -eo pid,user,cmd | grep `whoami`.*qemu-system | grep -v grep | awk '{print $1}')

if [ -z $process ]; then
	echo "no running qemu detected"
else
	kill $process
	echo "SIGTERM sent to process ${process}"
fi

