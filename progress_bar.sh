#!/bin/bash

# Initialize variables
directory=""

# Loop through arguments and process them
while [ $# -gt 0 ]; do
    case "$1" in
        --dir)
            shift
            directory="$1"
            ;;
        *)
            echo "Error: Invalid argument '$1'"
            exit 1
    esac
    shift
done

# Check if directory is empty
if [ -z "$directory" ]
then
    echo "Error: Directory path not specified."
    exit 1
fi

# Get the total number of Bash files in the directory
file_count=$(find "$directory" -type f -name '*.sh' | wc -l)

# Initialize progress variables
current_file=1
progress=0

# Loop through all Bash files in the directory
for file in "$directory"/*.sh; do
    # Execute the Bash file
    bash "$file"
    
    # Update progress variables
    current_file=$((current_file + 1))
    progress=$((current_file * 100 / file_count))
    
    # Print progress bar in blue
    printf "\r\033[34m[%-100s] %d%%\033[0m" $(printf '#%.0s' $(seq 1 $((progress))) $(seq $((progress + 1)) 100)) $progress
done

# Print newline after progress bar
echo ""
