# config-nvim-lua
Configuration of my nvim with lua

<<<<<<< HEAD
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
- Suporta todos os sabores oficiais: `latte`, `frappe`, `macchiato`, `mocha`.
- Comandos disponíveis:
  - `:CatppuccinSet <flavour>` — Define o sabor (ex.: `:CatppuccinSet mocha`).
  - `:CatppuccinCycle` — Alterna entre os sabores.
- Para definir um sabor padrão ao iniciar, adicione `vim.g.catppuccin_flavour = "<flavour>"` no seu `init.lua` ou em `nvim-settings.lua`.

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
=======
# Configuração Neovim (Windows)

Este README detalha a configuração realizada até o momento para o Neovim, explicando os plugins instalados, suas funções e como o ambiente está funcionando.

## Objetivo
Configurar o Neovim como um editor moderno para desenvolvimento, com suporte a:
- Autocompletar inteligente
- LSP (Language Server Protocol)
- Instalação automática de servidores de linguagem
- Aparência moderna

## Estrutura de Pastas
```
init.lua
lua/
	nvim-settings.lua
	plugins.lua
	plugins/
		catppuccin.lua
		lsp-config.lua
		lualine.lua
		neo-tree.lua
		telescope.lua
		treesitter.lua
```

## Plugins Instalados

### Aparência
- **catppuccin/nvim**: Tema moderno e bonito para o Neovim.
	- Configurado para fundo transparente.

### Autocompletar
- **hrsh7th/nvim-cmp**: Motor de autocompletar.
- **hrsh7th/cmp-nvim-lsp**: Fonte de autocompletar para LSP.
- **hrsh7th/cmp-buffer**: Autocompletar baseado no buffer atual.
- **hrsh7th/cmp-path**: Autocompletar para caminhos de arquivos.
- **hrsh7th/cmp-cmdline**: Autocompletar para comandos do Neovim.

### LSP (Language Server Protocol)
- **williamboman/mason.nvim**: Gerenciador de instalação de servidores LSP.
- **williamboman/mason-lspconfig.nvim**: Integração entre Mason e nvim-lspconfig, instala servidores automaticamente.
- **neovim/nvim-lspconfig**: Configuração dos servidores LSP.

### Outros Plugins
- **lualine.nvim**: Barra de status moderna.
- **neo-tree.nvim**: Navegador de arquivos.
- **telescope.nvim**: Fuzzy finder para arquivos, buffers, etc.
- **nvim-treesitter**: Realce de sintaxe avançado.

## Como está funcionando
- O Neovim está configurado para usar o tema Catppuccin com fundo transparente.
- O autocompletar está ativo em modo de inserção, usando fontes do LSP e do buffer.
- Os servidores LSP para TypeScript, HTML e Lua são instalados automaticamente pelo Mason e configurados pelo nvim-lspconfig.
- Atalhos úteis para LSP:
	- `K`: Hover (documentação)
	- `<leader>gd`: Ir para definição
	- `<leader>gr`: Referências
	- `<leader>ca`: Ações de código

## Requisitos
- Neovim versão 0.10 ou superior
- Windows (testado no Windows 10/11)

## Como instalar/atualizar plugins
- Use o comando `:Lazy sync` ou equivalente para instalar/atualizar plugins.
- Certifique-se de que o Neovim atualizado está sendo chamado (veja instruções acima).

## Observações
- Caso algum plugin não funcione, verifique se está usando a versão correta do Neovim e se o PATH do Windows está apontando para o executável novo.
- Para instalar novos servidores LSP, use o comando `:Mason` dentro do Neovim.

---
Se precisar de mais detalhes ou quiser expandir a configuração, basta pedir!
>>>>>>> 5d38fcadc9f39dae2b34329c0065a0ca4b1f6620
