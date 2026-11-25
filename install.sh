#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔗 Configurando enlaces simbólicos desde $DOTFILES_DIR..."

# Crear directorios base si no existen
mkdir -p "$HOME/.config"

# Crear enlaces simbólicos (forzando sobrescritura de enlaces viejos con -sfn)
ln -sfn "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
echo "  ✓ Neovim -> ~/.config/nvim"

ln -sfn "$DOTFILES_DIR/kitty" "$HOME/.config/kitty"
echo "  ✓ Kitty -> ~/.config/kitty"

ln -sfn "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.tmux.conf"
echo "  ✓ Tmux -> ~/.tmux.conf"

echo ""
echo "🎉 ¡Dotfiles instalados correctamente!"
echo "Para instalar dependencias en una máquina nueva:"
echo "  brew install neovim tmux"
echo "  brew install --cask kitty font-caskaydia-cove-nerd-font"
