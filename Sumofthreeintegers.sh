#!/bin/bash

echo "Enter three integers: "
read -a arr

sum=$((arr[0]+arr[1]+arr[2]))

if [ $sum -eq 0 ]
then
  echo "The sum of ${arr[0]}, ${arr[1]}, and ${arr[2]} is 0."
else
  echo "The sum of ${arr[0]}, ${arr[1]}, and ${arr[2]} is not 0."
fi
