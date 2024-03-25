check_item() {
  # is file, is erb, does not start with '_'
  if [[ -f "$item" && "$item" == *.erb && "$(basename "$item")" != _* ]]; then
      echo "$item"
  fi
}
