#!bin/bash
echo "Enter the year:"
read year
if [ $((year % 400)) == 0 ] || [ $((year % 100)) != 0 ] && [ $((year % 4)) == 0 ];  then
    echo "Leap year"
else
    echo "Not a leap year"
fi


Algorithm:
Step 1: Start the program
Step 2: Display the message: "Enter the year:"
Step 3: Read the year input from the user and store it in variable year
Step 4: Check if the year is divisible by 400
    • If true, display "Leap year" and go to Step 7
Step 5: If the year is not divisible by 400, check if the year is divisible by 100
    • If true, go to Step 6
Step 6: If the year is divisible by 100, it is not a leap year. Display "Not a leap year" and go to Step 7
Step 7: Check if the year is divisible by 4
    • If true, display "Leap year" and go to Step 8
    • If false, display "Not a leap year"
Step 8: End the program
