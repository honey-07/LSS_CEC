echo "Enter any positive number"
read num
c=0
i=1
sum=0
echo "ODD numbers are : "
while [ $i -le $num ]
do
if [ ! `expr $i % 2` -eq 0 ]
then
	echo $i
	c=`expr $c + 1`
	 sum=`expr $sum + $i`
fi
i=`expr $i + 1`
done
echo "Total odd numbers are " $c
echo "Sum of odd number from 1 to $num is : " $sum
