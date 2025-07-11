#!/bin/bash
source modules/utils.sh

section "Install Plugin ZSH"

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
  success "zsh-syntax-highlighting dipasang"
else
  warn "zsh-syntax-highlighting sudah ada"
fi

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git \
    "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
  success "zsh-autosuggestions dipasang"
else
  warn "zsh-autosuggestions sudah ada"
fi
