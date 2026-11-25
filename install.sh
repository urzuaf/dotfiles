#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔗 Configurando enlaces simbólicos desde $DOTFILES_DIR..."

mkdir -p "$HOME/.config"

# Función robusta: si ya existe una carpeta o archivo físico (ej: creado por Kitty o Neovim),
# lo remueve primero para evitar crear enlaces anidados como ~/.config/kitty/kitty
link_path() {
  local src="$1"
  local dest="$2"
  if [ -e "$dest" ] || [ -L "$dest" ]; then
    rm -rf "$dest"
  fi
  ln -s "$src" "$dest"
  echo "  ✓ $dest -> $src"
}

link_path "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
link_path "$DOTFILES_DIR/kitty" "$HOME/.config/kitty"
link_path "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"

echo ""
echo "🎉 ¡Dotfiles instalados correctamente!"
echo "Para recargar tmux en caliente si está abierto: tmux source-file ~/.tmux.conf"
