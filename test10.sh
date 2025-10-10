#!/bin/bash

read -p "Enter your Name :" name

length=${#name}

for i in $(seq 0 $((length-1)))
do
    char=${name:$i:1}
    echo "Character $((i+1)): $char"
done
echo "the String $name having $length charecters"

