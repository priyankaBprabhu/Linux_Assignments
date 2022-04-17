for((i=0; i<10; i++))
do
num=$(( ( RANDOM % 1000 ) - 1 ))
number[$i]="$num"
done
echo ${number[@]}
min=${number[0]}
max=${number[0]}

for((j=1; j<10 ; j++))
{
    if [[ ${number[j]} -gt $max ]];
        then
        max=${number[j]}
    fi
}
for((k=1; k<10; k++))
{
    if [[ ${number[k]} -lt $min ]];
        then
        min=${number[k]}
    fi
}

echo "Maximum number is: $max"
echo "Minimum number is: $min"



