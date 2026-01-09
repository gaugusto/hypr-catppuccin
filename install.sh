#!/bin/bash

# Lista de pacotes oficiais (repositórios principais)
PACKAGES=(
    hyprland
    hyprlock
    hyprpaper
    hypridle
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk
    pipewire
    wireplumber
    rofi
    waybar
    cliphist
    swaync
    brightnessctl
    stow
    swayosd
    hyprshot
    hyprsunset
)

# Atualiza os repositórios primeiro
sudo pacman -Syy

for package in "${PACKAGES[@]}"; do
    sudo pacman -S --noconfirm --needed "$package"
done

