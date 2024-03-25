#!/bin/bash

search_dir="$HOME/work/pairdev/anyadmin-rails/app/views"
ignore_dirs=("t*" "p*" "r*" "c*" "i*" "d*" "e*" "l*" "m*" "s*")

# Constructing the find command with ignored directories
find_cmd="find \"$search_dir\""

for dir in "${ignore_dirs[@]}"; do
    find_cmd+=" -path \"${search_dir}/${dir}\" -prune -o"
done

# Adding the rest of the find command
find_cmd+=" -type f -name \"*.erb\" -print"

# Executing the find command
eval "$find_cmd"
