#!/usr/bin/env bash

# Define as opções (Texto exibido no menu)
# lock="<span font_family='JetBrainsMono Nerd Font Propo 12'> </span>Lock"
# logout="<span font_family='JetBrainsMono Nerd Font Propo 12'> </span>Log Out"
# suspend="<span font_family='JetBrainsMono Nerd Font Propo 12'> </span>Suspend"
# reboot="<span font_family='JetBrainsMono Nerd Font Propo 12'> </span>Restart"
# shutdown="<span font_family='JetBrainsMono Nerd Font Propo 12'> </span>Power Off"
# hibernate="<span font_family='JetBrainsMono Nerd Font Propo 12'>󰒄 </span>Hibernate"

lock=" Lock"
logout=" Log Out"
suspend=" Suspend"
reboot=" Restart"
shutdown=" Power Off"
hibernate="󰒄 Hibernate"

# Concatena as opções separadas por nova linha
options="$lock\n$logout\n$suspend\n$hibernate\n$reboot\n$shutdown"

# Exibe o menu usando Rofi e captura a escolha do usuário
#chosen="$(echo -e "$options" | rofi -dmenu -i -p "Power Menu:" -lines 6)"

chosen="$(echo -e "$options" | walker --dmenu --hideqa)"

# Executa a ação baseada na escolha
case $chosen in
$lock)
  hyprlock
  ;;
$logout)
  hyprctl dispatch exit
  ;;
$suspend)
  systemctl suspend
  ;;
$hibernate)
  systemctl hibernate
  ;;
$reboot)
  systemctl reboot
  ;;
$shutdown)
  systemctl -i poweroff
  ;;
esac
