#!/bin/bash
if [ $# -eq 0 ]
then
read -p "Enter num1": num

read -p "Enter num2": num2
else
  num=$1
  num2=$2
  
fi
echo "sum of the numbers are":
expr  $num + $num2 2>error.txt
if [ $? -eq 0 ]
then
echo "subtracting of the numbers are":
expr  $num - $num2 2>error.txt
echo "Multipication of the numbers are":
expr $num \* $num2 2>error.txt
if [ $num2 -eq 0 ]
then
echo "invalid argument"
else
echo "Dividing of the numbers are":
expr  $num / $num2 2>error.txt
fi
echo "Mod":
expr $num % $num2 2>error.txt
else 
echo "invalid arguments"
fi


