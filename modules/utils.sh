#!/bin/bash

# Gaya log khas Karui
info() {
  echo -e "\033[1;34mℹ️  $1\033[0m"
}

success() {
  echo -e "\033[1;32m✅ $1\033[0m"
}

warn() {
  echo -e "\033[1;33m⚠️  $1\033[0m"
}

error() {
  echo -e "\033[1;31m❌ $1\033[0m"
}

section() {
  echo -e "\n\033[1;35m📦 $1\033[0m\n"
}
