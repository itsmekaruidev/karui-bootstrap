#!/bin/bash
source modules/utils.sh

section "Menambahkan Alias Khusus"

ALIAS_FILE="presets/aliases/${DISTRO_ID}.aliases"

if [ -f "$ALIAS_FILE" ]; then
  cat "$ALIAS_FILE" >> ~/.zshrc
  success "Alias dari $DISTRO_ID ditambahkan ke .zshrc"
else
  warn "Alias untuk $DISTRO_ID belum tersedia, dilewati"
fi
