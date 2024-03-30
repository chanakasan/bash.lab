set -e

script_dir=$(dirname "$0")
source $script_dir/helpers.sh
source_lib_helpers

main() {
  local this_dir=$script_dir
  local json_file="$this_dir/config.json"
  local opt_base=""
  local opt_ignored=""
  local new_content=""
  set_options
  # print_options
  run_steps 
}

run_steps() {
  list_files "$opt_base" "${opt_ignored[@]}" > $script_dir/log/input_files.txt
  update_files $script_dir/log/input_files.txt > $script_dir/log/updated_files.txt
}

main
