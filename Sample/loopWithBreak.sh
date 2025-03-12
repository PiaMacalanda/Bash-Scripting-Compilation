#break terminates the loop
#!/bin/bash

for i in {1..10}; do 
    if [ $i -eq 5 ]; then 
    echo "Stopping loop at $i"
    break
    
    fi
    echo "Number: $i"
done

#cd Sample
# chmod +x loopWithBreak.sh
# ./loopWithBreak.sh