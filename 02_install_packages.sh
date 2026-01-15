#!/bin/bash

# Aborta o script em caso de erro
#set -e

PACKAGES=(
  adapta-gtk-theme
  adw-gtk-theme
  ast-grep
  base
  bluez-utils
  brightnessctl
  cantarell-fonts
  cliphist
  dconf-editor
  efibootmgr
  eza
  fastfetch
  firefox
  fzf
  flatpak
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
  nvtop
  nwg-look
  nwg-shell-wallpapers
  papers
  plymouth
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
  waybar
  wget
  nvim
  greetd
  gredtd-regreet
  bash-completion
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
  wlctl-bin
  walker
  plymouth-theme-catppuccin-mocha-git#
  nautilus-open-any-terminal
  nitch#
  catppuccin-cursors-mocha
  catppuccin-gtk-theme-mocha
  btop-theme-catppuccin
)

sudo pacman -Sy

for package in "${PACKAGES[@]}"; do
  yay -S --noconfirm --needed "$package"
done
