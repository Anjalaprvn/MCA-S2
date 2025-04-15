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


Algorithm
Step 1: Start the program
Step 2: Display the message: "Enter a number:"
Step 3: Read the number and store it in variable a
Step 4: Check if a is less than 2 (prime numbers are greater than 1)
        If true, display: "$a is not prime" and go to Step 11
        If false, go to Step 5
Step 5: Set a flag prime=true to assume the number is prime initially
Step 6: Start a for loop from i=2 to i<=a/2 (no need to check beyond a/2 as factors will repeat)
        For each iteration, check if a % i == 0 (if a is divisible by i)
        If true, set prime=false, exit the loop (as the number is not prime)
Step 7: After the loop ends, check the value of prime
        If prime is still true, display: "$a is prime"
        If prime is false, display: "$a is not prime"
Step 8: End the program
