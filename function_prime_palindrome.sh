function palandrome()
{
rev=" "
temp=$num
while [ $num -gt 0 ]
do
    s=$(( $num % 10 ))
    num=$(( $num / 10 ))
    rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ];
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
}

function prime()
{
flag=0
if [ $num -eq 2 ]
then
	flag=0

elif test `expr $num % 2` -eq 0
then
	flag=1

elif test `expr $num % 3` -eq 0
then
	flag=1
elif test `expr $num % 5` -eq 0
then
	flag=1
fi

if [ $flag -eq 1 ]
then
echo "The number is not Prime"
else
echo "The number is  Prime"
fi
}

echo "Enter two number:"
read -r num
prime "$num"
palandrome "$num"
