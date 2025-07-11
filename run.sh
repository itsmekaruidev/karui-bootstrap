#!/bin/bash

set -e

source modules/utils.sh

section "Karui Bootstrap Installer (Modular)"

source modules/detect-distro.sh
source modules/install-zsh.sh
source modules/install-plugins.sh
source modules/configure-aliases.sh

success "Semua konfigurasi selesai!"
info "Silakan jalankan ulang terminal atau ketik: source ~/.zshrc"
