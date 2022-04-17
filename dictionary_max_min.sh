
for i in `seq 1000`
do
a=10
num=$(( ( RANDOM%6 ) +1 ))
number[i]=$num
case ${number[i]} in
	1) (( one++ )) ;;
        2) (( two++ ))  ;;
        3) (( three++ )) ;;
        4) (( four++ )) ;;
        5) (( five++ )) ;;
        6) (( six++ )) ;;
esac
case $a in
        $one) echo "one is reached maximum times " 
		(( max1++ ))
		exit 0 ;;
        $two) echo "two is reached maximum times "
                (( max2++ ))
 
		exit 0 ;;
        $three) echo "three is reached maximum times "
                (( max3++ ))

		 exit 0 ;;
        $four) echo "four is reached maximum times "
                (( max4++ ))

		 exit 0 ;;
        $five) echo "five is reached maximum times " 
                (( max5++ ))
		exit 0 ;;
        $six) echo "six is reached maximum times "  
                (( max6++ ))
		exit 0;;
esac
declare -A dictionary=( [k1]="$one" [k2]="$two" [k3]="$three" [k4]="$four" [k5]="$five" [k6]="$six" )
echo ${dictionary[@]}
#for key in ${!dictionary[@]}
#do
#	echo $key
#done
done

