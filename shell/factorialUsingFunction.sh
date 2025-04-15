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
