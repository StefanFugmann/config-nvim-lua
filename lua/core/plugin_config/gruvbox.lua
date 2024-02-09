vim.o.termguicolors = true
vim.o.background = "dark"
require("gruvbox").setup({
  transparent_mode = true,
  contrast = "soft",
})
vim.cmd [[ colorscheme gruvbox ]]
