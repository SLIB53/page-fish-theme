#! /usr/bin/env fish

function apply_theme
    mkdir -p ~/.config/fish/functions
    cp fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
end

echo "Applying theme..."
apply_theme

echo "Done!"
