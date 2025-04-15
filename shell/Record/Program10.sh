#!/bin/bash
echo "enter a number:"
read num
factorial() {
    result=1
    for (( i=1; i<=$1; i++ ))
    do
        result=$(( result * i ))
    done
    echo $result
}
echo "Factorial of $num:$(factorial $num)"


Algorithm
Step 1: Start the program
Step 2: Display the message: "Enter a number:"
Step 3: Read the number and store it in variable num
Step 4: Define a function factorial() to calculate the factorial of a number
Step 4.1: Initialize result=1 to store the product of numbers
Step 4.2: Use a for loop from i=1 to i=$1 (where $1 is the function argument, the number for which factorial is to be calculated)
Step 4.3: Multiply result by i in each iteration of the loop
Step 4.4: After the loop, return result (the factorial of the number)
Step 5: Call the factorial() function with the entered number and store the result
Step 6: Display: "Factorial of $num: $result"
Step 7: End the program

