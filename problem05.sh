#!/bin/bash
# Create an array to store the repeated digits
repeated_digits=()

# Loop through the range of 0-100
for (( i=0; i<=100; i++ ))
do
  # Convert the number to a string
  num=$(echo $i | tr -d '\n')

  # Check if any digit is repeated twice
  if echo $num | grep -q '\([0-9]\)\1'; then
    # Add the number to the array
    repeated_digits+=($num)
  fi
done

# Print the array of repeated digits
echo "${repeated_digits[@]}"
