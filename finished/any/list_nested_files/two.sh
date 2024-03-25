# Function to recursively list text files
list_text_files() {
    local dir="$1"
    local ignore_dirs=("test_one" "test_two")

    # Loop through files and directories in the current directory
    for item in "$dir"/*; do
        # If it's a directory
        if [[ -d "$item" ]]; then
            # Extract directory name from the full path
            local dirname
            dirname=$(basename "$item")
            
            # Check if the directory should be ignored
            if [[ " ${ignore_dirs[@]} " =~ " ${dirname} " ]]; then
                continue
            fi

            # Recursive call to list_text_files function
            list_text_files "$item"
        elif [[ -f "$item" && "$item" == *.txt ]]; then
            # If it's a text file, print its path
            echo "$item"
        fi
    done
}

# Check if a directory is provided as argument
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 DIRECTORY"
    exit 1
fi

# Check if the provided directory exists
if [[ ! -d "$1" ]]; then
    echo "Error: Directory '$1' not found."
    exit 1
fi

# Call the list_text_files function with the provided directory
list_text_files "$1"
