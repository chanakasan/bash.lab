print_mp3_sizes() {
    local text_file="$1"
    # Read each line (MP3 file path) from the provided text file
    while IFS= read -r mp3_file; do
        # Check if the file is an MP3 file
        if [[ "$mp3_file" == *.mp3 ]]; then
            # Get the size of the MP3 file
            file_size=$(stat -c "%s" "$mp3_file" 2>/dev/null)
            # Print the file path and size
            echo "File: $mp3_file, Size: $file_size bytes"
        else
            echo "Skipping non-MP3 file: $mp3_file"
        fi
    done < "$text_file"
}
