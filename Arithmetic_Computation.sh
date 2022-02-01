echo "Enter a: "  
read a
  
echo "Enter b: "  
read b

echo "Enter c: "  
read c

val1=`expr $a + $b \* $c`
echo "a + b * c : $val1"

val2=`expr $a \* $b + $c`
echo "a * b + c : $val2"

val3=`expr $c + $a / $b`
echo "c + a / b : $val3"

val4=`expr $a % $b + $c`
echo "a % b + c : $val4"

echo ${val1[key1]}
echo ${val2[key2]}
echo ${val3[key3]}
echo ${val4[key4]}

myarray=("$val1" "$val2" "$val3" "$val4")
for i in ${!myarray[@]}; do
  echo "element $i is ${myarray[$i]}"
done

echo "Array in original order"
echo ${myarray[@]}

readarray -t arrSorted < <(printf '%d\n' "${myarray[@]}" | sort -r)
echo "Array in descending order : "
echo ${arrSorted[@]}

readarray -t arrSorted < <(printf '%d\n' "${myarray[@]}" | sort -r)
echo "Array in ascending order : "
echo ${arrSorted[@]}
