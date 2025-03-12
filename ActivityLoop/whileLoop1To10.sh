#!/bin/bash
#activity while loop 1 to 10
count=1
while [ $count -le 10 ]; do
echo "Count: $count"
((count++))
done