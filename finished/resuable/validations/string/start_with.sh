start_with() {
  local item="$1"
  if [[ "$(basename "$item")" != _* ]]; then
    echo true
  else
    echo false
  fi
}

start_with _hello
start_with h_ello
start_with _hi
