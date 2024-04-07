test_func() {
  echo hi
}

name=_x
name=test_func

if [[ $(type -t "$name") == "function" ]]; then
  echo yes
else
  echo no
fi

