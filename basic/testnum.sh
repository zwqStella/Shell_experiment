#/bin/bash
#s and i don't need to be declared as int
#use double brackets to count num
s=0
i=0
while [ "$i" != "100" ]
do
	i=$(($i+1))
	s=$(($s+$i))
done
echo "1+2+3+..+100=$s"

#another choice
declare -i a=0
declare -i b=0
while [ "$b" != "100" ]
do
	b=$b+1
	a=$a+$b
done
echo "1+2+3+..+100=$a"

exit 0
