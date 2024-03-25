# Check if arg provided
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <dir>"
    exit 1
fi

# Check if arg is directory
if [[ ! -d "$1" ]]; then
    echo "Error: Directory '$1' not found."
    exit 1
fi

echo " => passed"
echo " input dir = $1"
echo
