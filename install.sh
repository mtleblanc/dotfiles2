#!/usr/bin/env bash

mkdir -p $HOME/.config/nvim/undo
for F in nvim/*; do
    if [[ -f "$F" ]]; then
	    ln -sf "$(pwd)/$F" "$HOME/.config/$F"
    fi
done
