#! /bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
echo $a  $b  $c
#COMPUTE ARITHMETIC OPERATION_3
result=$(($c + ($a/$b)))
echo "The Result= " $result

