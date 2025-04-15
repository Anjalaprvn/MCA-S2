#!/bin/bash
echo "Display the Multiplication table of:"
read num
i=1
while [ $i -le 10 ]
do
  echo "$num x $i = $((num * i))"
  i=$((i + 1))
done


Algorithm:
Step1:Start the program
Step2:Display the message: "Display the Multiplication table of:"
Step3:Read the number and store it in variable num
Step4:Initialize a counter variable i = 1
Step5:Start a while loop with the condition i <= 10
      -Display the multiplication expression: "num x i = num * i"
      -Increment i by 1
Step6:End the loop when i becomes greater than 10
Step7:End the program

