return {
  -- Adiciona o catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Configura o LazyVim para carregar o catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
