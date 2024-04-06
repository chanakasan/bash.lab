source_lib_helpers() {
  if [ -z "$script_dir" ]; then
    echo " script_dir not set"
    exit
  fi
  for f in $script_dir/lib/*.sh; do
    source $f
  done
}

set_options() {
  opt_base=$(jq -r '.base' "$json_file")
  opt_ignored=($(jq -r '.ignore[]' "$json_file"))
}

print_options() {
  echo "base:"
  printf "%s\n" "$opt_base"
  echo
  echo "ignored:"
  printf "%s\n" "${opt_ignored[@]}"
  echo
}

read_file() {
  local file_name="$1"
  content=$(<"$file_name")
  echo "$content"
}