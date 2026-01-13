#!/bin/bash

# Aborta o script em caso de erro
set -e

PACKAGES=(
  adapta-gtk-theme
  adw-gtk-theme
  ast-grep
  base
  bluez-utils
  brightnessctl
  btop-theme-catppuccin
  cantarell-fonts
  catppuccin-cursors-mocha
  catppuccin-gtk-theme-mocha
  cliphist
  dconf-editor
  efibootmgr
  elephant
  elephant-archlinuxpkgs
  elephant-calc
  elephant-clipboard
  elephant-desktopapplications
  elephant-files
  elephant-runner
  elephant-symbols
  elephant-unicode
  elephant-windows
  eza
  fastfetch
  firefox
  fzf
  flatpak
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
  materia-gtk-theme
  nautilus-open-any-terminal
  nitch
  nvtop
  nwg-look
  nwg-shell-wallpapers
  papers
  plymouth
  plymouth-theme-catppuccin-mocha-git
  polkit-gnome
  power-profiles-daemon
  ripgrep
  sbctl
  showtime
  spotify-launcher
  stow
  stylua
  swaync
  swayosd
  system-config-printer
  timeshift
  ttf-jetbrains-mono-nerd
  walker
  waybar
  wget
  wlctl-bin
  nvim
  greetd
  gredtd-regreet
  bash-completion
)

sudo pacman -Syy

for package in "${PACKAGES[@]}"; do
  yay -S --noconfirm --needed "$package"
done
