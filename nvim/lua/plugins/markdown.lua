-- Asegurar colores suaves para títulos de Markdown (Morado y Cian de Dracula en lugar de rojo)
vim.api.nvim_create_autocmd({ "ColorScheme", "FileType" }, {
  pattern = { "*", "markdown" },
  callback = function()
    vim.api.nvim_set_hl(0, "RenderMarkdownH1", { fg = "#bd93f9", bold = true })
    vim.api.nvim_set_hl(0, "RenderMarkdownH2", { fg = "#8be9fd", bold = true })
    vim.api.nvim_set_hl(0, "RenderMarkdownH3", { fg = "#ff79c6", bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { fg = "#bd93f9", bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { fg = "#8be9fd", bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { fg = "#ff79c6", bold = true })
  end,
})

return {
  -- Configuración limpia y elegante de Markdown
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      heading = {
        sign = false,
        backgrounds = {},
        -- Oculta los '#' por completo: el título queda como texto limpio
        icons = { "" },
        position = "overlay",
        width = "block",
      },
      code = {
        sign = false,
        style = "normal",
        width = "block",
        right_pad = 0,
      },
      dash = {
        enabled = true,
        icon = "─",
      },
      bullet = {
        icons = { "•", "◦", "▪", "▫" },
      },
      checkbox = {
        enabled = true,
      },
      pipe_table = {
        style = "normal",
      },
    },
    ft = { "markdown" },
  },

  -- Silenciar warnings de markdownlint
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
}
