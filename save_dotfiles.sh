#!/bin/bash

FILES=(
    ".config/git"
    ".config/foot"
    ".config/i3status"
    ".config/i3status-rust"
    ".config/sway/config"
    ".config/swaylock/config"
    ".zshrc"
)

for file in "${FILES[@]}"; do
    src="$HOME/$file"

    if [ ! -e "$file" ] || [ "$src" -nt "$file" ]; then
        mkdir -p "$(dirname "$file")"
        cp  "$src" "$file"
        echo "$file saved"
    fi
done
