read -p echo"enter first number m=" m
read -p echo"enter second number n" n
for (( j=$m; j<=$n; j++ ))
do
i=2
flag=0
if [ $j -eq 2 ]
then
flag=0
#echo "$j the number is prime "
elif test `expr $j % $i` -eq 0
then
flag=1
elif test `expr $j % 3` -eq 0
then
flag=1
elif test `expr $j % 5` -eq 0
then
flag=1
fi
if test $flag -eq 1
then
echo "$j The number is Not Prime"
else
echo "$j The number is Prime"
fi
m=$(($m+1))
done
