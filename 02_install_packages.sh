#!/bin/bash

# Aborta o script em caso de erro
set -e

PACKAGES=(
  adapta-gtk-theme
  ast-grep
  base-devel
  bluez-utils
  brightnessctl
  btop-theme-catppuccin
  cantarell-fonts
  catppuccin-cursors-mochaca
  catppuccin-gtk-theme-mocha
  cliphist
  eza
  fastfetch
  fd
  firefox
  fzf
  gnome-calculator
  gnome-disk-utility
  gnome-software
  hypridle
  hyprlauncher
  hyprlock
  hyprpaper
  hyprshot
  hyprsunset
  kitty
  lazygit
  loupe
  luarocks
  nautilus
  networkmanager-dmenu
  nvtop
  nwg-look
  papers
  polkit-gnome
  power-profiles-daemon
  ripgrep
  rofi-calc
  rofi-emoji
  rofi-pass
  showtime
  stow
  stylua
  swaync
  swayosd
  ttf-jetbrains-mono-nerd
  waybar
  wget
  flatpak
)

sudo pacman -Syy

for package in "${PACKAGES[@]}"; do
  yay -S --noconfirm --needed "$package"
done
