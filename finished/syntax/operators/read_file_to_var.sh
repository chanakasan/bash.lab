file="$1"

# Checking if the file exists
if [ -f "$file" ]; then
    # Reading the contents of the file into a variable
    file_contents=$(<"$file")
    
    # Displaying the contents of the variable
    echo "Contents of '$file'"
    echo "=> start"
    echo "$file_contents"
    echo "=> end"
else
    echo "File not found: $file"
fi
