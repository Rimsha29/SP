#!/bin/bash
fname=$1
#declare -i id
set `pidof $1`
cd /proc/$1
#head status

set `head status`
if [ $7 = sleeping ]
	then
	echo "sleeping"

echo "Name: $fname"
shift 7
echo "pid: $6"
echo "ppid: $8"


else
echo "Running"
echo "Name: $fname"
shift 7
echo "pid: $6"
echo "ppid: $8"


fi




