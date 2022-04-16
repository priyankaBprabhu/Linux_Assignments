read -p "enter the number n =" n;
poweroftwo=1;
i=0
while [ $i -lt $n ];
do
	if [ $poweroftwo -eq 256 ]
	then
	echo "power of the number excceded 256"
	exit 0
	fi
        poweroftwo=$(( 2 * $poweroftwo ));
	i=$((i+1))
done
echo "2 the power of $n is" $poweroftwo

