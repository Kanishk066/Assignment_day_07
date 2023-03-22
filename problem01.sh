#!/bin/bash

# Generate 10 random 3-digit numbers and store them in an array
for i in {1..10}
do
  random_number=$(( $RANDOM % 900 + 100 )) # Generate a random number between 100 and 999
  numbers_array+=($random_number) # Store the number in the array
done

# Find the 2nd largest and 2nd smallest elements in the array
largest=${numbers_array[0]}
second_largest=${numbers_array[0]}
smallest=${numbers_array[0]}
second_smallest=${numbers_array[0]}

for number in "${numbers_array[@]}"
do
  if [ $number -gt $largest ]
  then
    second_largest=$largest
    largest=$number
  elif [ $number -gt $second_largest -a $number -ne $largest ]
  then
    second_largest=$number
  fi

  if [ $number -lt $smallest ]
  then
    second_smallest=$smallest
    smallest=$number
  elif [ $number -lt $second_smallest -a $number -ne $smallest ]
  then
    second_smallest=$number
  fi
done

# Print the results
echo "Random numbers: ${numbers_array[@]}"
echo "Second largest: $second_largest"
echo "Second smallest: $second_smallest"
