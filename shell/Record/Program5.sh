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
