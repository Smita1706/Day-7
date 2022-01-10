max_limit=10
count=0
while [ $count -lt $max_limit ]
do
   num=$((($RANDOM%900)+100))
   arr[$count]=$num;
   count=$(($count+1))
done
echo "Unsorted array : ${arr[@]}"
for(( i=0 ; i<$max_limit ; i++ ))
do
   for(( j=$(($i+1)) ; j<$max_limit ; j++ ))
     do
       if [ ${arr[i]} -gt ${arr[j]} ]
       then
          temp=${arr[i]}
          arr[i]=${arr[j]}
          arr[j]=$temp
        fi
       done
done
echo "Sorted array : ${arr[@]} "
echo "Second smallest no is : ${arr[1]}"
s=$((${#arr[@]}-2))
echo $s
echo "Second largest no is : ${arr[$s]}"
