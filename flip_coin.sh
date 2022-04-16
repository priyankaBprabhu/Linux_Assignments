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
if [[ $tails -eq 11 ]]  
then
	exit 0
fi
if [[ $heads -eq 11 ]]
then
	exit 0
fi
done
