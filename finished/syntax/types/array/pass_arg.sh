data_arr=(apple orange banana)

print_arr() {
  local name="$1"
  local input=("${@:2}")
  echo " $name Array:"
  printf " * %s\n" "${input[@]}"
}

print_arr "Fruits" "${data_arr[@]}"
