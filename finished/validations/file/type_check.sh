check_is_erb() {
  local item="$1"
  if [[ "$item" == *.erb ]]; then
      echo true
  else
      echo false
  fi
}

check_is_erb clients/new.html.erb
check_is_erb clients/index.html.eerb 
check_is_erb clients/_form.html.txt.erb
check_is_erb clients/show.html.erbb
