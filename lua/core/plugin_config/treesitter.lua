require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { 'lua', 'vim', 'java', 'javascript', 'typescript', 'query', 'bash', 'angular', 'css', 'html', 'json', 'markdown', 'python', 'regex', 'sql', 'xml' },

  -- Install parser synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
