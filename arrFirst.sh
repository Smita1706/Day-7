max_limit=5
count=0
while [ $count -lt $max_limit ]
do
 num=$((($RANDOM%900)+100))
arr[$count]=$num;
count=$(($count+1))
done
echo ${arr[@]}
max=0
max2=0
min=${arr[0]}
for(( i=0 ; i<$max_limit ; i++ ))
do
  if [ ${arr[i]} -gt $max ]
  then
   max2=$max
   max=${arr[i]};
  else
   if [ ${arr[i]} -gt $max2 ]
   then
    max2=${arr[i]}
   fi
   fi
  if [ ${arr[i]} -lt $min ]
  then
    min2=$min
    min=${arr[i]};
  else
   if [[ ${arr[i]} -lt $min2 ]]
  then
  min2=${arr[i]}
    fi
  fi
done
echo "2nd largest element is : $max2"
echo "2nd smallest element is : $min2"
