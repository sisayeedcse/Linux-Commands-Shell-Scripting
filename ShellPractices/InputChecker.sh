#!/bin/bash

<<Comment
This code will check wheather a number is EVEN or ODD and Positive or Negative
Comment

echo "Please Enter a Number: "
read num

if (( $num%2==0 && $num > 0  ));then
	echo "Number is Positive and Even"
elif (( $num%2==0 && $num <0 ));then
	echo "Number is Negative and Even"
elif (( $num%2!=0 && $num > 0));then
	echo "Number is Positive and Odd"
else
	echo "Number is Negative and Odd"
fi

