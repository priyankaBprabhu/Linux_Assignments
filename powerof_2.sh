read -p echo"enter the number n =" n;
echo "2 the power of $n is"
poweroftwo=1;
for (( i=0;i<$n;i++ ));
do
	poweroftwo=$(( 2 * $poweroftwo ));
	echo $poweroftwo;

done


