#!/bin/bash

# Check if directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"

# Check if directory exists
if [ ! -d "$directory" ]; then
    echo "Directory $directory not found."
    exit 1
fi

# New content text
new_content='<%= polaris_page(
      title: t(".title")
    ) do |page| %>
  <%= polaris_card do %>

<!-- original -->
PLACEHOLDER
<!-- end original -->

  <% end %>
<% end %>'

# Iterate through each .txt file in the directory
for file in "$directory"/*.erb; do
    echo "file: $file"
    echo
    # Check if file exists and is readable
    if [ -f "$file" ] && [ -r "$file" ]; then
        # Read the original content of the file
        original_content=$(<"$file")
        
        # Replace "PLACEHOLDER" with original content
        modified_content="${new_content/PLACEHOLDER/$original_content}"
        
        # Write modified content back to the file
        echo "$modified_content" > "$file"
        
        echo "Modified $file"
    else
      echo "not readable: $file"
    fi
done

echo "Modification complete."
