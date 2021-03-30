#! /bin/bash
#TO DECLEAR THE DICTIONARY
declare -A ArithmaticOperation
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
#COMPUTE ARITHMETIC OPERATION_3
result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c + ($a/$b)))
result4=$((($a%$b)+$c))
#To Store the result in dictionary
ArithmaticOperation[result1]=$result1
ArithmaticOperation[result2]=$result2
ArithmaticOperation[result3]=$result3
ArithmaticOperation[result4]=$result4

#Read the value in Array
for((index=0; index<=${#ArithmaticOperation[@]}; index++))
do
  array[index]=${ArithmaticOperation[result$((index+1))]}
done
#TO PRINT
echo "${array[@]}"

#TO FUNCTION SORTING RESULTS IN DECENDING ORDER
function descendingOrderSort()
{
	for(( index=0; index<${#array[@]}; index ++ ))
	do
		for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
		do
			if (( $(echo "${array[indexOne+1]} > ${array[indexOne]}" ) ))
			then
				temp=${array[indexOne]}
				array[indexOne]=${array[indexOne+1]}
				array[indexOne+1]=$temp
			fi
		done
	done
	echo "To data descending order:"${array[@]}
}

#TO FUNCTION CALL FOR SORTING IN DECENDING ORDER
descendingOrderSort ${array[@]}
