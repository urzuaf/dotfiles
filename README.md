# Dotfiles de Urzuaf 🚀

Mi entorno de desarrollo en terminal optimizado para máxima velocidad y bajo consumo de recursos (Neovim + Tmux + Kitty).

## Contenido

- **`nvim/`**: Configuración completa de Neovim con LazyVim, tema Dracula, extras para Go, Python, .NET (C#), SQL, Tailwind, Markdown render y asistentes de IA.
- **`tmux/`**: Configuración de Tmux (`.tmux.conf`) con soporte de mouse/trackpad, splits intuitivos, colores 24-bit True Color y teclas extendidas.
- **`kitty/`**: Configuración de la terminal Kitty con tema Dracula, soporte de fuente CaskaydiaCove Nerd Font y atajos de teclado.

---

## 💻 Instalación en una máquina nueva (Mac)

1. **Instalar herramientas base con Homebrew:**
   ```bash
   brew install git neovim tmux ripgrep fd
   brew install --cask kitty font-caskaydia-cove-nerd-font
   ```

2. **Clonar este repositorio:**
   ```bash
   git clone https://github.com/urzuaf/dotfiles.git ~/dotfiles
   ```

3. **Ejecutar el script de instalación (crea los enlaces simbólicos automáticamente):**
   ```bash
   cd ~/dotfiles
   chmod +x install.sh
   ./install.sh
   ```

4. **Iniciar Neovim:**
   ```bash
   nvim
   ```
   *LazyVim descargará e instalará todos los plugins automáticamente en menos de un minuto.*

---

## 🔄 Cómo actualizar los cambios a GitHub

Como las configuraciones en `~/.config/` son enlaces directos a este repositorio, cualquier cambio que hagas en Neovim, Kitty o Tmux se refleja aquí de inmediato.

Para guardar tus cambios en GitHub:

```bash
cd ~/dotfiles
git add .
git commit -m "update: ajustes en mi entorno"
git push
```
