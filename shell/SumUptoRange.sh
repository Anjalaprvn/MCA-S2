#!/bin/bash

echo "Enter a number:"
read n
sum=$(( n * (n + 1) / 2 ))

echo "Sum = $sum"
