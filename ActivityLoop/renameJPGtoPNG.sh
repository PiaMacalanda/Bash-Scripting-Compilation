#Write a script that renames a .jpg file to .png

#!/bin/bash

for file in *.jpg; do 
    mv "$file" "${file%.jpg}.png"
    echo "Renamed $file to ${file%.jpg}.png"
done
