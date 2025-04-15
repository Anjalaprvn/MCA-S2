#!/bin/bash
echo "Enter start of range:"
read S
echo "Enter end of range:"
read E
echo "Even numbers from $S to $E are:"
for (( i=S; i<=E; i++ ))
do
if (( i % 2 == 0 )); then
echo $i
fi
done


Algorithm
Step 1: Start the program
Step 2: Display the message: "Enter start of range:"
Step 3: Read the start value and store it in variable S
Step 4: Display the message: "Enter end of range:"
Step 5: Read the end value and store it in variable E
Step 6: Display the message: "Even numbers from $S to $E are:"
Step 7: Start a loop from i = S to i = E

For each iteration of the loop:
Step 8: Check if i % 2 == 0 (if i is even)

If true, print the value of i
Step 9: End the loop
Step 10: End the program
