#!bin/bash
echo "Enter the year:"
read year
if [ $((year % 400)) == 0 ] || [ $((year % 100)) != 0 ] && [ $((year % 4)) == 0 ];  then
    echo "Leap year"
else
    echo "Not a leap year"
fi
