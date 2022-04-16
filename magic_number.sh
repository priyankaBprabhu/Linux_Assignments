function ismagic()
{
sum = 0;
while (n -gt 0 || sum -gt 9)
  do
   if [ n -eq 0 ]
    then
       n = sum;
       sum = 0;
    fi
    sum = $(( sum + `expr n % 10` ));
    n /= 10;
  done
if [ sum -eq 1 ]
then 
echo "entered number is magic number"
else
echo "entered number is not a magic number"
fi
}

echo "enter number"
read -r n
ismagic "$n"

