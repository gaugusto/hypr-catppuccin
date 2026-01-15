#!/bin/bash

# Aborta o script em caso de erro
set -e

AUR_PACKAGES=(
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
  nitch
  catppuccin-cursors-mocha
  catppuccin-gtk-theme-mocha
  btop-theme-catppuccin
)

yay -Sy

for package in "${AUR_PACKAGES[@]}"; do
  yay -S --noconfirm --needed "$package"
done
