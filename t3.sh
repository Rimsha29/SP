#!/bin/bash
declare -i username
username=$1
#echo $1

if [ $# = 0 ]
then 
 echo "zero argument passed"
exit 0
fi


if [ $# != 1 ]
then 
 echo "only one  argument passed"
exit 1
fi



showAllOwner()
{	#echo "abc"
	for fname in `ls` 
	do 
	#echo "abc"
		if [ -f $fname ]
		then
	#echo "123"	
		#echo "$1 $2 $3"
		set `ls -li $fname`
		#echo "$4"
			if [ $username=$4 ]
			then
				echo "Filename: $fname Filetype: File owner: $4"
				
			fi
		fi
	done	
	
	
}

showAllOwner
