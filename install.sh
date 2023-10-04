#!/usr/bin/env bash

mkdir -p $HOME/.config/nvim/undo
for F in nvim/*; do
    if [[ -f "$F" ]]; then
	    ln -sf "$(pwd)/$F" "$HOME/.config/$F"
    fi
done

mkdir -p $HOME/.config/zsh
ln -sf "$(pwd)/zsh/zshenv" "$HOME/.zshenv"
cd zsh
for F in *; do
    if [[ -f "$F" ]]; then
        ln -sf "$(pwd)/$F" "$HOME/.config/zsh/.$F"
    fi
done
cd ..
