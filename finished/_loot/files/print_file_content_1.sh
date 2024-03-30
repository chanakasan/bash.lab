main() {
    echo
    echo "Reading file: $1"
    echo
    check_file_input_present
    print_file_contents
    echo "done"
    echo
}

check_file_input_present() {
    # Check if input is provided via stdin
    if [ -t 0 ]; then
        echo "File input required"
        exit 1
    fi

    # Check if input is a directory
    if [ -d /dev/stdin ]; then
        echo "Error: Input is a directory, please provide a file"
        exit 1
    fi
}

print_file_contents() {
    while IFS= read -r line; do
        echo "$line"
    done
}

main
