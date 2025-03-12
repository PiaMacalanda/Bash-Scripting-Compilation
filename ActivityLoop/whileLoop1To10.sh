#Write a while loop that prints a number from 1 to 10

#!/bin/bash
count=1
while [ $count -le 10 ]; do
    echo "Count: $count"
    ((count++))
done


