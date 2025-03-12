#Modify the script to skip even numbers using continue.
# count=1
# while [ $count -le 10 ]; do
#     if 
#     echo "Count: $count"
#     ((count++))
# done

#!/bin/bash

count=1
while [ $count -le 10 ]; do
    if [ $((count % 2)) -eq 0 ]; then
        echo "Skip even $numbers"
        ((count++))
        continue
    fi
    echo "Count: $count"
    ((count++))
done