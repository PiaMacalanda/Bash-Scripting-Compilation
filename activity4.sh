# Scenario:
# You are tasked with writing a Bash script that simulates a grading system. The script should:
# Ask the user to input their exam score (0-100).
# Based on the input, determine the grade using the following criteria:
#  90-100 → Grade A
#  80-89 → Grade B
#  70-79 → Grade C
#  60-69 → Grade D
#  Below 60 → Grade F
# If the input is not between 0 and 100, display an error message.

#!/bin/bash

echo -n "Enter Grade (0-100): "
read grade

if [[ "$grade" -ge 90 && "$grade" -le 100 ]]; 
    then grade="A"

elif [[ "$grade" -ge 80 ]]; 
    then grade="B"

elif [[ "$grade" -ge 70 ]]; 
    then grade="C"

elif [[ "$grade" -ge 60 ]]; 
    then grade="D"

elif [[ "$grade" -ge 0 ]]; 
    then grade="F"

else
    echo "Error: Input must be between 0 and 100."
    
fi

echo "Grade: $grade"
