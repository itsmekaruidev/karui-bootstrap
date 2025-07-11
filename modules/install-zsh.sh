#!/bin/bash
source modules/utils.sh

section "Install ZSH & Oh My Zsh"

install_pkg() {
  case "$DISTRO_ID" in
    arch|manjaro|endeavouros)
      info "Menggunakan pacman..."
      sudo pacman -Sy --noconfirm zsh git curl
      ;;
    debian|ubuntu|linuxmint|pop)
      info "Menggunakan apt..."
      sudo apt update && sudo apt install -y zsh git curl
      ;;
    fedora)
      info "Menggunakan dnf..."
      sudo dnf install -y zsh git curl
      ;;
    *)
      error "Distro $DISTRO_ID belum didukung"
      exit 1
      ;;
  esac
}

install_pkg
success "ZSH terpasang"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  info "Menginstall Oh My Zsh..."
  RUNZSH=no KEEP_ZSHRC=yes sh -c \
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  success "Oh My Zsh selesai"
else
  warn "Oh My Zsh sudah terpasang, dilewati"
fi
