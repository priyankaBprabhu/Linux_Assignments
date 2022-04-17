read -p "enter the value for a=" a
read -p "enter the value for b=" b
read -p "enter the value for c=" c
s1=$(( a + b * c ))
echo $s1
s2=$(( a * b + c ))
echo $s2
s3=$(( c + a / b ))
echo $s3
s4=$(( a % b + c ))
echo $s4
i=0
echo "store computed  values into dictionary"
declare -A dictionary=([k1]="$s1" [k2]="$s2" [k3]="$s3" [k4]="$s4") 
for value in ${dictionary[@]}
do
	array[k]=$value
(( k++ ))
done
echo "store dictionary values into array"
echo ${array[@]}
for (( i = 0; i < 4 ; i++ ))
do
for (( j = $i; j < 4; j++ ))
do
if [ ${array[i]} -lt ${array[j]}  ]; then
t=${array[i]}
array[i]=${array[j]}
array[j]=$t
fi
done
done
echo "store array values into decending order"
echo ${array[@]}
for (( i = 0; i < 4 ; i++ ))
do
for (( j = $i; j < 4; j++ ))
do
if [ ${array[i]} -gt ${array[j]}  ]; then
t=${array[i]}
array[i]=${array[j]}
array[j]=$t
fi
done
done
echo "store array values into accending order"
echo ${array[@]}

