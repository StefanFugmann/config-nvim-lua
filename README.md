# config-nvim-lua
Configuration of my nvim with lua

## Configurações do NVIM

### nvim-settings.lua
- `expandtab`: Converte tabs em espaços.
- `tabstop=2`: Define o número de espaços que uma tab representa.
- `softtabstop=2`: Define o número de espaços que uma tab representa ao editar.
- `shiftwidth=2`: Define o número de espaços para cada nível de indentação.
- `mapleader`: Define a tecla líder como espaço.
- `number`: Ativa a numeração de linhas.

### plugins.lua
- Este arquivo está vazio e não contém configurações.

### catppuccin.lua
- Configura o tema Catppuccin com fundo transparente.

### lsp-config.lua
- Configurações para o LSP, incluindo:
  - `mason.nvim`: Gerenciador de LSP.
  - `mason-lspconfig.nvim`: Integração do Mason com LSP.
  - `nvim-lspconfig`: Configurações do LSP.

### lualine.lua
- Configura a barra de status Lualine com o tema Catppuccin.

### neo-tree.lua
- Configura o Neo-tree para gerenciar arquivos com um atalho de teclado.

### telescope.lua
- Configura o Telescope para busca de arquivos e grep ao vivo.

### treesitter.lua
- Configura o Treesitter para suporte a várias linguagens e habilita a indentação e destaque de sintaxe.
