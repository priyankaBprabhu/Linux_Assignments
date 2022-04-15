sum=0
for i in `seq 5`
do
num="$(( (RANDOM % 99) +10 ))"
dice[$i]="$num"
sum=$(($sum + $num))
done
echo ${dice[@]}
echo $sum
avg=$(($sum/5))
echo $avg
