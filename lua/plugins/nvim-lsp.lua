return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason-lspconfig.nvim", "saghen/blink.cmp" },
  config = function()
    local lspconfig = require("lspconfig")
    local util = require("lspconfig.util")
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      single_file_support = true,
      root_dir = util.root_pattern(".git"),
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = {
            checkThirdParty = false,
            library = vim.api.nvim_get_runtime_file("", true), -- <-- this line,
          },
        },
      },
    })

    lspconfig.astro.setup({})
  end,
}
