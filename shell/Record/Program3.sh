#!/bin/bash
echo "enter frst number"
read a
echo "enter secnd nmbr"
read b
echo "enter thrd nmbr"
read c
if [[ $a -gt $b  &&  $a -gt $c ]]
then
        echo  "$a is greater"
elif [[ $b -gt $c  &&  $b -gt $c ]]
then
        echo "$b is greatest"
else
        echo "$c is greater than others"
fi


Algorithm:
Step 1: Start the program
Step 2: Display the message: "enter frst number"
Step 3: Read the first number and store it in variable a
Step 4: Display the message: "enter secnd nmbr"
Step 5: Read the second number and store it in variable b
Step 6: Display the message: "enter thrd nmbr"
Step 7: Read the third number and store it in variable c
Step 8: Check if a is greater than both b and c
    • If true, display: "$a is greater" and go to Step 9
    • If false, go to Step 10
Step 9: End the program
Step 10: Check if b is greater than both a and c
    • If true, display: "$b is greatest" and go to Step 9
    • If false, go to Step 11
Step 11: Display: "$c is greater than others
Step 12: End the program

