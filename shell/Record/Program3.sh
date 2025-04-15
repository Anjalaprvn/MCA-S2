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
