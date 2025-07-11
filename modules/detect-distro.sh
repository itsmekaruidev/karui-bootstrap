#!/bin/bash
source modules/utils.sh

section "Deteksi Distro"

if [ -f /etc/os-release ]; then
  . /etc/os-release
  export DISTRO_ID=$ID
  success "Distro terdeteksi: $DISTRO_ID"
else
  error "Gagal mendeteksi distro"
  exit 1
fi
