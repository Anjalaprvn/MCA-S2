Q)Shell script to count the number of words and lines in a file


CODE:-
if [ $# -gt 1 ]
then
        echo "syntax is <$0> [<filename>]"
        exit 1
fi
flag=0
if [ $# -eq 1 ]
then
        term=`tty`
        exec <$1
fi
while read line
do
        no1=` expr $no1 + 1 `
        set $line>/dev/null
        nowds=` expr $nowds + $# `
done
echo "numbrer of lines=$no1"
echo "number of words=$nowds"
if [ $flag -eq 1 ]
then
        exec < $term
fi
exit 0


INPUT:-
 bash count.sh c.sh

 OUTPUT:-
 numbrer of lines=2
number of words=4

 
