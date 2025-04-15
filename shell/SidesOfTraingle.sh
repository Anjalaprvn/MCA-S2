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
