main() {
  local dir="$HOME/work/pairdev/anyadmin-rails/app/views"
  for f in $dir/**/*.erb; do
    echo $f
  done
}

main