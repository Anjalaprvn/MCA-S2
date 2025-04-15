#!/bin/bash
read -p "Enter a number: " num
i=2
while [ $i -le $(($num / 2)) ]; do
  if [ $((num % i)) -eq 0 ]; then
    echo "$num is not prime"
    exit
  fi
  i=$((i + 1))
done
echo "$num is prime"


Algorithm

step1:Start the program
Step2:Prompt the user to enter a number and store it in the variable num
Step3:Initialize a variable i = 2
step4:Check if i is less than or equal to num / 2
        If true, continue to Step 5
        If false, go to Step 8
Step5:Check if num % i == 0 (i.e., if num is divisible by i)
        If true, print: "$num is not prime" and exit the program
step6: Increment i by 1 (i = i + 1)
Step7:Repeat the loop from Step 4
Step8:If no divisors were found, print: "$num is prime"
Step9:End the program
