echo "print employee name and totalpay whose basepay is greter then 100000"
 cat data.csv | awk '{if($4 > 100000) print $2" " $7}'
printf "\n"

echo "print rows whose jobtitle is captain"
 cat data.csv | grep -i captain |awk '{ print $0}'
printf "\n"
echo "print totalpay whose jobtitle is captain and calculate the sum "
 cat data.csv | grep -i captain |awk '{sum+=$7}END{print sum}'
printf "\n"

echo "print job title and overtimepay who has overtimepay is between the range"
 cat data.csv | awk '{if($5>=7000 && $5<=10000) print $3" " $5}'
printf "\n"

echo "print basepay and calculate average"
 cat data.csv |awk '{sum+=$4}END{print sum/NR}'


