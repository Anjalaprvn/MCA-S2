#!/bin/bash
echo "enter a nmbr"
read a
if (( $a % 2 == 0 ))
then
        echo " its a even nmbr"
else
        echo " its an odd nmbr"
fi

Algorithm:
Step 1: Start the program
Step 2: Display the message: "enter a nmbr"
Step 3: Read input from the user and store it in variable a
Step 4: Check if a % 2 == 0
    • If true, go to Step 5
    • If false, go to Step 6
Step 5: Display: "its a even nmbr" and go to Step 7
Step 6: Display: "its an odd nmbr"
Step 7: End the program
