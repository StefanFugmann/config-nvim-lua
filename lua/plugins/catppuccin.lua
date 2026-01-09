return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    local flavors = { "latte", "frappe", "macchiato", "mocha" }
    local default = vim.g.catppuccin_flavour or "mocha"

    require("catppuccin").setup({
      flavour = default,
      transparent_background = true,
    })
    vim.cmd.colorscheme("catppuccin")

    -- Comando para definir o sabor explicitamente: :CatppuccinSet <flavour>
    vim.api.nvim_create_user_command("CatppuccinSet", function(opts)
      local flav = opts.args
      local ok = false
      for _, v in ipairs(flavors) do if v == flav then ok = true end end
      if not ok then
        print("Flavor inválido. Opções: latte, frappe, macchiato, mocha")
        return
      end
      vim.g.catppuccin_flavour = flav
      require("catppuccin").setup({ flavour = flav, transparent_background = true })
      vim.cmd.colorscheme("catppuccin")
      print("Catppuccin flavor set to " .. flav)
    end, { nargs = 1, desc = "Set Catppuccin flavor: latte|frappe|macchiato|mocha" })

    -- Comando para alternar entre sabores: :CatppuccinCycle
    local idx = 1
    for i, v in ipairs(flavors) do if v == default then idx = i end end
    vim.api.nvim_create_user_command("CatppuccinCycle", function()
      idx = idx % #flavors + 1
      local flav = flavors[idx]
      vim.g.catppuccin_flavour = flav
      require("catppuccin").setup({ flavour = flav, transparent_background = true })
      vim.cmd.colorscheme("catppuccin")
      print("Catppuccin flavor set to " .. flav)
    end, { nargs = 0, desc = "Cycle Catppuccin flavors" })
  end
}
