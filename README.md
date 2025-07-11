# Karui Bootstrap 🚀

> Setup terminal modern & keren di semua distro Linux dalam satu perintah.

## 🎯 Tujuan

Skrip ini dibikin buat lo yang:
- Baru install Linux dan pengen terminal yang nyaman
- Benci setting ulang zsh, plugin, alias setiap pindah OS
- Pengen standar DevBase ringan & pro, bisa deploy cepat di mana aja

## ⚙️ Fitur

- Deteksi distro otomatis (Arch, Debian, Fedora)
- Install ZSH + OhMyZsh tanpa tanya-tanya
- Tambah plugin: syntax highlighting & autosuggestion
- Tambah alias pintar sesuai distro
- Update tema .zshrc → langsung keren
- Bisa dijalankan dari VM, server, laptop, atau .ova

## 🐧 Distro yang Didukung

Karui Bootstrap saat ini mendukung 3 keluarga distro besar:

| Distro Family        | Contoh Distro                                      |
|----------------------|----------------------------------------------------|
| 🟢 Arch Linux        | Arch, Manjaro, EndeavourOS                         |
| 🔵 Debian / Ubuntu   | Debian, Ubuntu, Linux Mint, Pop!_OS                |
| 🔴 Fedora            | Fedora Workstation / Server                        |

Deteksi distro dilakukan otomatis via `/etc/os-release`.

---

## 🧩 Konfigurasi Dasar ZSH

Jika file `.zshrc` belum ada, Karui Bootstrap akan secara otomatis menambahkan konfigurasi dasar dari `zshrc.base`.

File ini berisi:
- Theme ZSH default
- Plugin awal (git, autosuggest, highlighting)
- Setup terminal title
- Alias loader `~/.karui-alias`

### 🔜 Rencana Distro Tambahan

Kami punya rencana dukung distro berikut dalam update selanjutnya:

- Alpine Linux
- openSUSE (Tumbleweed & Leap)
- Kali Linux / Parrot
- Void Linux (kalau sempat 🤯)

Kalau kamu pengguna distro lain dan pengen support tambahan...

**👉 Langsung aja tambahin PR atau edit modul-nya!**
Kami sangat terbuka. Gak cuma "request", tapi:
**“Silakan langsung gas, very welcome bro 😎”**

💬 Bisa juga diskusi dulu di [issue GitHub](https://github.com/itsmekaruidev/karui-bootstrap/issues) — siapa tau bareng-bareng makin asik.

---

🧩 Kuncinya: Satu skrip buat semua terminal. Ringan, modern, fleksibel.

## 🔥 Cara Cepat

Install ZSH + Plugin + Alias langsung via 1 baris:

    curl -sSL https://raw.githubusercontent.com/itsmekaruidev/karui-bootstrap/main/install.sh | bash


## 💡 Contoh Alias yang Tersedia

| Distro  | Alias Tambahan                            |
|---------|--------------------------------------------|
| Arch    | update, install, remove (pakai pacman)     |
| Debian  | update, install, remove (pakai apt)        |
| Fedora  | update, install, remove (pakai dnf)        |

## 🛠️ Untuk Pengembang / Custom

Clone manual kalau ingin ubah:

    git clone https://github.com/itsmekaruidev/karui-bootstrap.git
    cd karui-bootstrap
    ./run.sh --full

## 📦 Rencana Kedepan

- Mode --minimal, --server, --dev
- Dukungan Alpine, Void, openSUSE
- Integrasi preset DevTool: Git, Docker, Node, dll
- CI untuk auto-test semua distro via GitHub Actions

## 🧑‍💻 Kontributor

Project ini open source, dan kamu bisa bantu juga.
Kalau nemu bug / mau tambahin preset distro, langsung buat issue atau PR.

## 📄 Lisensi

MIT — Bebas dipakai, bebas dimodifikasi.
Tapi... jangan lupa minum kopi dulu ☕
