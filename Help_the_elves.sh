#!/bin/bash

#First we need to read the file with the elfs' data

file_in="Elf_input.txt"

# the value of top elf aka elf with the most food is initialized to 0

top_elf='0'

# the value of largest number of calories held by a given elf

current_max_cals=0

# the current elf being evaluated

current_elf='0'

# the sum of calories

sum=0

while read -r line
do
	if [[ -n $line ]];
	then
		((sum+=$line))
		echo $line
	else
		echo "sum is $sum"
	fi
done < $file_in

echo $sum