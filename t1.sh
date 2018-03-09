#!/bin/bash
display ()
{
if [ $# -eq 0 ]
	then
	echo "no arguments entered"
	exit 1
fi

if [ $# -gt 6 ]
	then
	echo "You entered more than six arguments"
	exit 1
fi


if [ $# -eq 3 -a $2 = -s ]
then
	num=$1
	st=$3
	for i in `seq $st 10`
	do
	echo " $num * $i= `expr $num \* $i` "
	done
exit 1
fi



if [ $# -eq 3 -a $2 = -e ]
then
	num=$1
	end=$3
	for i in `seq 1 $end`
	do
	echo " $num * $i= `expr $num \* $i` "
	done
	exit 1
fi




if [ $# -eq 1 ]
then
	num=$1
	for i in `seq 1 10`
	do
	echo " $num * $i= `expr $num \* $i` "
	done
	exit 1
fi



if [ $# -eq 5 -a $2 = -s -a $4 = -e ]
then
	num=$1
	st=$3
	end=$5
	for i in `seq $st $end`
	do
	echo " $num * $i= `expr $num \* $i` "
	done
	exit 1
fi



if [ $# -eq 6 -a $2 = -s -a $4 = -e -a $6 = -r ]
then
	num=$1
	st=$3
	end=$5
	for i in `seq $st $end`
	do
	echo " $num * $i= `expr $num \* $i` "
	done
	echo " Printing in reverse "
	while [ $end -ge $st ]
		do
			echo " $num * $end= `expr $num \* $end` "
			end=`expr $end - 1 `
		done
	exit 1
fi

}
display $1 $2 $3 $4 $5 $6 $7
