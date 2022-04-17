tails=0
heads=0
while true
do
Result=$((RANDOM%2))
if [[ ${Result} -eq 0 ]];
        then
        echo HEADS
        heads=$((heads + 1))
        echo $heads
fi

if [[ ${Result} -eq 1 ]];
        then
        echo TAILS
        tails=$((tails + 1))
        echo $tails
fi
if [[ $tails -eq 21 ]]
then
	k=`expr $tails - $heads`
	echo "tail won $k times"
        exit 0
fi
if [[ $heads -eq 21 ]]
then
        k=`expr $heads - $tails`
        echo "heads won $k times"
        exit 0
fi
done
