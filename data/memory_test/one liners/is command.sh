test_func() {
  echo hi
  return 1
}

name=test_func
# name=hello_123

if command -v $name &>/dev/null; then
  echo exist
else
  echo not exist
fi

