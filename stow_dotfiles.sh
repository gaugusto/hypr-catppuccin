#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

CONFIG_DIR="$HOME/.config"

echo "Usando dotfiles em: $DOTFILES_DIR"
echo "Backup e stow serão aplicados em: $CONFIG_DIR"
echo

for program_dir in "$DOTFILES_DIR"/*; do
  if [ -d "$program_dir" ]; then
    program_name="$(basename "$program_dir")"

    if [ -d "$program_dir/.config/$program_name" ]; then
      target_path="$CONFIG_DIR/$program_name"

      # Se já existe o diretório no ~/.config, cria backup
      if [ -e "$target_path" ]; then
        backup_path="${target_path}.backup-$(date +%Y%m%d-%H%M%S)"
        echo "Backup encontrado: $target_path"
        echo "Movendo para: $backup_path"
        mv "$target_path" "$backup_path"
      fi

      echo "Executando stow para: $program_name"
      stow --simulate -d "$DOTFILES_DIR" -t "$HOME" "$program_name"
      echo
    fi
  fi
done

echo "Processo concluído."
