#!/bin/bash

echo "Enter a number:"
read n

# Find all prime factors of n
i=2
while [ $i -le $n ]
do
    if [ $(($n % $i)) -eq 0 ]
    then
        factors+=($i)
        n=$(($n / $i))
    else
        i=$(($i + 1))
    fi
done

# Display the array of prime factors
echo "Prime factors of the input number are:"
echo ${factors[@]}
