get_script_dir() {
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  echo $dir
}
