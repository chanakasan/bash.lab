list_files() {
  local dir="$1"
  for f in "$dir"/*; do
    if [[ -d "$f" ]]; then
      list_files "$f"
    else
      echo $f
    fi
  done
}

input="$HOME/work/pairdev/anyadmin-rails/app/views"
list_files $input
