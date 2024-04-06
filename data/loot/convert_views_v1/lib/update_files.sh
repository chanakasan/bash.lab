update_files() {
  local paths_file="$1"
  local new_content=$(read_file $script_dir/new_content.txt)
  if [ ! -f "$paths_file" ]; then
    echo "paths_file is required"
    return
  fi
  echo "Update started"
  echo
  while IFS= read -r input_file; do
    if [ -f "$input_file" ] && [ -r "$input_file" ]; then
      if [[ "$input_file" == *.erb ]]; then
        original_content=$(<"$input_file")
        modified_content="${new_content/PLACEHOLDER/$original_content}"
        echo "$modified_content" > "$input_file"
        echo "$input_file"
      else
          echo "Skipping non-erb file: $input_file"
      fi
    else
      echo "not readable: $input_file"
    fi
  done < "$paths_file"
  echo
  echo "Update files complete."
  echo
}
