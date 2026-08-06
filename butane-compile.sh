#!/bin/bash

# Loop through all files ending in .bu in the current directory
for file in *.bu; do
    # Ensure the file exists to handle empty directories gracefully
    [ -e "$file" ] || continue
    
    # Extract the filename without the .bu extension
    basename="${file%.bu}"
    
    echo "Processing ${file} ..."
    # Run the butane command and output to the .ign file
    butane --pretty --strict "$file" > "${basename}.ign"
done