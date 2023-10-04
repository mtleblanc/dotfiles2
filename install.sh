#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mkdir -p $HOME/.config/nvim/undo
for F in "$SCRIPT_DIR/nvim"/* ; do
    if [[ -f "$F" ]]; then
        ln -sf "$F" "$HOME/.config/nvim/"
    fi
done

mkdir -p $HOME/.config/zsh
for F in "$SCRIPT_DIR/zsh"/*; do
    if [[ -f "$F" ]]; then
        ln -sf "$F" "$HOME/.config/zsh/"
    fi
done
ln -sf "$SCRIPT_DIR/zsh/zshenv" "$HOME/.zshenv"
ln -sf "zshrc" "$HOME/.config/zsh/.zshrc"
ln -sf "zprofile" "$HOME/.config/zsh/.zprofile"
ln -sf "zlogin" "$HOME/.config/zsh/.zlogin"

