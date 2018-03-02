#!/bin/bash
Filename=$1
Username=$2
	if [ $# -eq 3 ] || [ $# -eq 1 ]
then
	echo "invalid arguments"
	
else
	set `ls -li  "$Filename"`
		if [ $4 = $Username ]
	then
		echo "No cheating"
	else
		echo "cheating"
	
		fi
	
           
fi

