for((i=0; i<10; i++))
do
num=$(( ( RANDOM % 1000 ) + 100 ))
array[$i]="$num"
done
echo ${array[@]}

for ((i=0; i<10; i++))
do
	for ((j=0; j<10; j++))
	do
		if [ ${array[i]} -gt ${array[j]} ]
		then
			temp=${array[i]}
			array[i]=${array[j]}
			array[j]=$temp

		fi
	done
done
echo "sorted array"
echo ${array[@]}
large=${array[(1)]}
small=${array[(i - 2)]}
echo "2 nd largest number in an array is"
echo $large
echo "2 nd smallest number in an array is"
echo $small
