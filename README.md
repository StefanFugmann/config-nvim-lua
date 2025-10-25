# config-nvim-lua
Configuration of my nvim with lua

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
