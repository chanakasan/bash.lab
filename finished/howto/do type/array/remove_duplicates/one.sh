data=(apple orange banana apple mango orange)

remove_dup() {
  local input=("$@")
  local result=($(printf "%s\n" "${input[@]}" | sort -u))
  echo "${result[@]}"
}

remove_dup "${data[@]}"
