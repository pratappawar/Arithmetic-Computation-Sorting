#! /bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
echo $a  $b  $c
#COMPUTE ARITHMETIC OPERATION_2
result=$(($a * $b + $c))
echo "The Result= " $result

