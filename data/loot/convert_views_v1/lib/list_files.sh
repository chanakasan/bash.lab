list_files() {
    local base_dir="$1"
    local ignore_dirs=("${@:2}")

    # Loop through files/directories
    for item in "$base_dir"/*; do
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
            list_files "$item"
        elif [[ -f "$item" && "$item" == *.erb && "$(basename "$item")" != _* ]]; then
        # else if it's a file with correct type, print its path
            echo "$item"
        fi
    done
}
