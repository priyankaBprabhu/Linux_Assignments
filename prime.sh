read -p echo"enter the number number=" number
echo $number
flag=0
if [ $number -eq 2 ]
then
echo "the number is prime "
elif test `expr $number % 2` -eq 0
then
flag=1
elif test `expr $number % 3` -eq 0
then
flag=1
elif test `expr $number % 5` -eq 0
then
flag=1
fi
if test $flag -eq 1
then
echo "The number is Not Prime"
else
echo "The number is Prime"
fi


