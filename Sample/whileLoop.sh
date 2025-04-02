#Repeats as long as a condition is true.

#!/bin/bash
count=1
while [ $count -le 5 ]; do
echo "Count: $count"
count=$((count+1))
done