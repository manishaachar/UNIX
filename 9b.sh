echo -n "Enter a file name"
read filename
if [ -f $filename ]
then
	n=10
	while read line
	do
		ll=`expr length "$line"`
		if [ $ll -le $n ]
		then
			echo $line
		else
			s=1
			e=$n
			echo "echo $line | cut -c $s - $e\\"            #cat abc | cut -c 1-10
			rcl=`expr $ll - $e`
			while [ $rcl -ge $n ]
			do
				s=`expr $e + 1`
				e=`expr $e + $n`
				echo "echo $line | cut -c $s - $e\\"
				rcl=`expr $ll - $e`
			done
			s=`expr $e + 1`
			echo "echo $line | cut -c $s - $e\\"
		fi
	done < $filename
else
	echo "$filename: No Such file found"
fi

