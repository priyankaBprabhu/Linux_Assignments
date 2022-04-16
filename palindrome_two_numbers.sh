
function palandrome()
{
rev=" "
for num in $a $b
do
    x="$x$sep$num"
    sep=" "
done
temp=$num
while [ $num -gt 0 ]
do
    # Get Remainder
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


echo "Enter two number:"
read -r a
read -r b
palandrome "$a" "$b"
