return {
  -- Configuración para Snacks Explorer (el explorador por defecto de LazyVim)
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,  -- Mostrar archivos que empiezan con punto (.) por defecto
            ignored = true, -- Mostrar archivos ignorados por .gitignore por defecto
          },
          files = {
            hidden = true,  -- Mostrar archivos ocultos al buscar con <Space> <Space>
            ignored = true, -- Mostrar archivos de .gitignore al buscar con <Space> <Space>
          },
        },
      },
    },
  },

  -- Compatibilidad por si en el futuro activas Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    optional = true,
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
}
