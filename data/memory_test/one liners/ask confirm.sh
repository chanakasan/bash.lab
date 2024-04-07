confirm() {
  local response=""
  read -p "$1 (y/n) ? " response
  if [ "$response" == "y" ] || [ "$response" == "yes" ]; then
    echo yes
  fi
}

confirm
