print_path() {
  echo $PATH | tr ':' '\n'
}

print_path_without_duplicates() {
  echo $PATH | tr ':' '\n' | awk '!seen[$0]++'
}

print_path_as_array() {
  IFS=':' read -ra PATH_ARRAY <<< "$PATH"
  for item in "${PATH_ARRAY[@]}"; do
    echo "$item"
  done
}

# print_path > out_dup
# print_path_without_duplicates > out_nodup
print_path_as_array