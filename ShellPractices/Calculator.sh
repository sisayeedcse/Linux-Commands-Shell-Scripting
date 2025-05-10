#!/bin/bash

<<Comment
This is a basic calculator by checking Operator inputs.
Comment

echo "Enter First Number: "
read num1
echo "Enter Second Number: "
read num2
echo "What operation do you want? (+, -, *, /): "
read op

if [[ $op == "+" ]]; then
    echo "$num1 $op $num2 = $(($num1 + $num2))"
elif [[ $op == "-" ]]; then
    if [[ $num1 -gt $num2 ]]; then
        echo "$num1 $op $num2 = $(($num1 - $num2))"
    elif [[ $num2 -gt $num1 ]]; then
        echo "$num1 $op $num2 = $(($num2 - $num1))"
    else
        echo "$num1 $op $num2 = 0"
    fi
elif [[ $op == "*" ]]; then
    echo "$num1 $op $num2 = $(($num1 * $num2))"
elif [[ $op == "/" ]]; then
    if [[ $num2 -eq 0 ]]; then
        echo "Error: Division by zero is not allowed."
    else
        echo "$num1 $op $num2 = $(($num1 / $num2))"
    fi
else
    echo "Please enter a valid operator."
fi

