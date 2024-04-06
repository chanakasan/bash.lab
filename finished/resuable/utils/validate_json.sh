validate_json_py() {
  local input=$1
  if [ -z "$input" ]; then
    return
  fi
  echo "Parsing..."
  echo
  echo $input | python -m json.tool
}

validate_json_jq() {
  local input=$1
  if [ -z "$input" ]; then
    return
  fi
  echo "Parsing..."
  echo
  echo $input | jq
}

# validate_json_py "$1"
validate_json_jq "$1"
