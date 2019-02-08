#!/bin/bash

counter=0
filename="$1"
word="$2"

while read -r line; do
    line="$line"
    result=$(grep -o -i $word <<< $line | wc -l)
    counter=$((counter+result))
done < "$filename"

echo "Word $word $counter found."
