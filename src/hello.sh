main() {
  local my_data=""
  declare -A my_data=([en]=ENGLISH [es]=SPANISH [it]=ITALIAN)
  print_assoc_array my_data
  local size=$(get_array_size my_data)
  local en_value=$(get_array_value my_data en)
  echo " size: $size"
  echo " en_value: $en_value"
}

get_array_size() {
  local -n arr=$1
  echo "${#arr[@]}"
}

get_array_value() {
  local -n arr=$1
  local key=$2
  local result=${arr[$key]}
  echo $result
}

print_assoc_array() {
  local -n arr=$1
  for k in "${!arr[@]}"; do 
    echo " ${k}: ${arr[$k]}"
  done
}

main
