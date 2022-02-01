	local -n keys=$1 
	local -n values=$2

	max_value=0 
	max_value_index=0 
	for(( i = 0; i < ${#values[@]}; i++)) 
	do

		if(( values[i] >= max_value )) 
		then

			max_value=${values[i]]
			max_value_index=$i 
		fi 
	done
	echo "The winning combination is ${keys [$max_value_index]} with ${max_value}%"
}
read -p "Enter number of times to flip a combination:" no_of_Flips
echo "SINGLET-COMBINATION"
declare - A singlet_frequency=(

				[H]=0
				[T]=0

for (( flips=1; for(( Flip 1; flip <= no_of_flips; flip++ )

) do
