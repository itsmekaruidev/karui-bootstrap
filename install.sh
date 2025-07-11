#!/bin/bash

set -e

TEMP_DIR="/tmp/karui-bootstrap"
REPO="https://raw.githubusercontent.com/itsmekaruidev/karui-bootstrap/main"

echo -e "\n📦 Karui Bootstrap - Installer"
echo "🔗 Mengunduh skrip modular dari $REPO"
echo

# Cek apakah curl tersedia
if ! command -v curl &>/dev/null; then
  echo "❌ Error: curl tidak ditemukan. Silakan install curl terlebih dahulu."
  exit 1
fi

mkdir -p "$TEMP_DIR/modules"
mkdir -p "$TEMP_DIR/presets/aliases"

# Unduh modul
for file in utils.sh detect-distro.sh install-zsh.sh install-plugins.sh configure-aliases.sh; do
  echo "⬇️  Mengunduh modul: $file"
  curl -fsSL "$REPO/modules/$file" -o "$TEMP_DIR/modules/$file" || {
    echo "❌ Gagal mengunduh $file"
    exit 1
  }
done

# Unduh preset alias (3 distro utama)
for D in arch debian fedora; do
  echo "⬇️  Mengunduh alias untuk $D"
  curl -fsSL "$REPO/presets/aliases/$D.aliases" -o "$TEMP_DIR/presets/aliases/$D.aliases" || {
    echo "❌ Gagal mengunduh alias untuk $D"
    exit 1
  }
done

# Eksekusi modular
cd "$TEMP_DIR"
source modules/utils.sh
source modules/detect-distro.sh
source modules/install-zsh.sh
source modules/install-plugins.sh
source modules/configure-aliases.sh

# Tambahkan zshrc.base jika user belum punya
if [ ! -f "$HOME/.zshrc" ]; then
  echo "➕ Menambahkan konfigurasi dasar .zshrc"
  curl -fsSL "$REPO/zshrc.base" -o "$TEMP_DIR/zshrc.base"
  cp "$TEMP_DIR/zshrc.base" "$HOME/.zshrc"
  success ".zshrc dasar ditambahkan"
else
  info "File .zshrc sudah ada, tidak ditimpa"
fi

success "✅ Instalasi Karui Bootstrap selesai!"
info "💡 Jalankan ulang terminal atau ketik: source ~/.zshrc"
