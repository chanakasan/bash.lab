main() {
  local dir_path="$1"
  local pwd_dir=$(basename $PWD)
  if [ -L "$dir_path" ]; then
    abs_path=$(readlink -f "$dir_path")
    echo abs_path: $abs_path
  elif [[ "$pwd_dir" == "space" ]] && [[ -L "$PWD" ]]; then
    abs_path=$(readlink -f "$PWD")
    vscode $abs_path
  fi
}