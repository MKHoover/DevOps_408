#!/bin/bash

#First we need to read the file with the elfs' data

file_in="Elf_input.txt"

# the value of top elf aka elf with the most food is initialized to 0

top_elf=0

# the value of largest number of calories held by a given elf

current_max_cals=0

# the current elf being evaluated

current_elf=0

# the sum of calories

sum=0

while read -r line;
do
	if [[ -n $line ]];
	then
		((sum+=$line))
		echo $line
	else
		echo "sum is $sum"
		if (($sum > $current_max_cals));
		then
			top_elf=$current_elf
			current_max_cals=$sum
		fi
		sum=0
		((current_elf++))
		echo "current_elf is $current_elf"
		
	fi
done < $file_in

echo "the top elf is at index $top_elf and is carrying $current_max_cals calories."