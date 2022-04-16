for i in `seq 5`
do
num="$(( RANDOM % 1000 ))"
number[$i]="$num"
done
echo ${number[@]}

max=${number[0]}
#min=${number[0]}
for j in "${number[@]}"
do
    if [[ "$j" -gt "$max" ]]; 
	then
        max="$j"
    fi
done
min=${number[0]}
for k in "${number[@]}"
do
    if [[ "$k" -lt "$min" ]];
	then
        min="$k"
    fi
done
echo "Maximum number is: $max"
echo "Minimum number is: $min"
