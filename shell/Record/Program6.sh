#!/bin/bash
echo "Enter side 1:"
read a
echo "Enter side 2:"
read b
echo "Enter side 3:"
read c
if (( a + b > c && a + c > b && b + c > a )); then
    echo "The sides $a, $b, and $c can form a triangle."
else
    echo "The sides $a, $b, and $c cannot form a triangle."
fi

Algorithm
Step 1: Start the program
Step 2: Display the message: "Enter side 1:"
Step 3: Read the length of side 1 and store it in variable a
Step 4: Display the message: "Enter side 2:"
Step 5: Read the length of side 2 and store it in variable b
Step 6: Display the message: "Enter side 3:"
Step 7: Read the length of side 3 and store it in variable c
Step 8: Check if the sum of any two sides is greater than the third side:

Check if (a + b > c), (a + c > b), and (b + c > a)
    • If true, go to Step 9
    • If false, go to Step 10
Step 9: Display: "The sides $a, $b, and $c can form a triangle."
Step 10: Display: "The sides $a, $b, and $c cannot form a triangle."
Step 11: End the program
