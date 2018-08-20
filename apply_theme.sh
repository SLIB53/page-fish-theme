#! /usr/bin/env sh

mkdir -p ~/.config/fish/functions

printf "Copying fish_prompt.fish to ~/.config/fish/functions/fish_prompt.fish...\n"
cp fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

printf "Done!\n"
