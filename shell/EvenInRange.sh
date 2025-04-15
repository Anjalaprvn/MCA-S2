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
