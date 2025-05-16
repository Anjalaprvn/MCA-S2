Q)Shell script to compare two files. If the files are identical delete one

code:-
if [ $# -ne 2 ]
then
        echo "Syntax is <$0> <file1> <file2>"
elif [ -f $1 -a -f $2 ]
then
        cmp $1 $2 >/dev/null
        if [ $? -eq 0 ]
        then
                echo " the file $1 and $2 are same"
                rm -f $1
                echo "$1 deleted"
        else
                echo "$1 and $2 are not same"
        fi
else
        echo "files are not ordinary files"
fi

ALGORITHM

Step 1: Check if the number of arguments is not equal to 2.
        If true, display the syntax and exit.
Step 2: Check if both provided arguments are ordinary files.
        If they are, proceed to the next step.
Step 3: Compare the contents of the two files using the cmp command.
        If they are the same, print that the files are identical.
Step 4: If the files are identical, delete the first file and print a message confirming deletion.

Step 5: If the files are not the same, print that they are different.

Step 6: If either of the inputs is not an ordinary file, display an error message.

INPUT:
bash compare.sh c.sh b.sh

OUTPUT:
c.sh and b.sh are not same



