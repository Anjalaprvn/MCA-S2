#!/bin/bash
echo "Enter a number:"
read a
if [ $a -lt 2 ]; then
echo "$a is not prime"
else
prime=true
for ((i=2; i<=a/2; i++)); do
if [ $((a % i)) -eq 0 ]; then
prime=false
break
fi
done
if $prime; then
echo "$a is prime"
else
echo "$a is not prime"
fi
fi
