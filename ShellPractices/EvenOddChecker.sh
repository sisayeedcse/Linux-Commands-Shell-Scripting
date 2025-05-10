#!/bin/bash

<<Comment
This code will check wheather a number is EVEN or ODD
Comment

echo "Please Enter a Number: "
read num

if (( $num%2==0 ));then
        echo "Number is Even"
else
        echo "Number is ODD"
fi


