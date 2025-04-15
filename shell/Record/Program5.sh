#!/bin/bash
echo "Enter three sides of the triangle"
echo "Enter side 1:"
read a
echo "Enter side 2:"
read b
echo "Enter side 3:"
read c

if [ "$a" == "$b" ] && [ "$b" == "$c" ]; then
    echo "The triangle is equilateral."
elif [ "$a" == "$b" ] || [ "$b" == "$c" ] || [ "$c" == "$a" ]; then
    echo "The triangle is isosceles."
else
    echo "The triangle is scalene."
fi

Algorithm:
Step 1: Start the program
Step 2: Display the message: "Enter three sides of the triangle"
Step 3: Display the message: "Enter side 1:"
Step 4: Read the length of side 1 and store it in variable a
Step 5: Display the message: "Enter side 2:"
Step 6: Read the length of side 2 and store it in variable b
Step 7: Display the message: "Enter side 3:"
Step 8: Read the length of side 3 and store it in variable c
Step 9: Check if all three sides are equal ($a == $b and $b == $c)
    • If true, display: "The triangle is equilateral." and go to Step 11
Step 10: If the sides are not all equal, check if any two sides are equal ($a == $b, $b == $c, or $c == $a)
    • If true, display: "The triangle is isosceles." and go to Step 11
Step 11: If neither condition is true, display: "The triangle is scalene."
Step 12: End the program
