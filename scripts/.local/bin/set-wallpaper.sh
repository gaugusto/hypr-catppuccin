#!/bin/bash

# Diretório das imagens
DIR="$HOME/.config/backgrounds"

# Lista os arquivos, remove o caminho completo para exibir apenas o nome no menu
# e armazena a escolha do usuário
CHOICE=$(ls "$DIR" | walker -d -H)

# Se o usuário cancelar (ESC), o script encerra
if [ -z "$CHOICE" ]; then
  exit 1
fi

# Constrói o caminho completo do arquivo selecionado
FULL_PATH="$DIR/$CHOICE"

# Executa o comando do hyprctl
# Primeiro 'preload' para garantir que a imagem está na memória, depois 'wallpaper'
# hyprctl hyprpaper preload "$FULL_PATH"
# hyprctl hyprpaper wallpaper ",$FULL_PATH"

hyprctl hyprpaper wallpaper ",$FULL_PATH,cover"

notify-send "Wallpaper changed" "New wallpaper: $CHOICE" -n avatar-default
