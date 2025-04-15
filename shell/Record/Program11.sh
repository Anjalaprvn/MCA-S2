#!/bin/bash
echo "Display the Multiplication table of:"
read num
i=1
while [ $i -le 10 ]
do
  echo "$num x $i = $((num * i))"
  i=$((i + 1))
done
