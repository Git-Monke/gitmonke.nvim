return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason-lspconfig.nvim", "saghen/blink.cmp" },
  config = function()
    vim.lsp.config('*', {
      root_markers = { '.git' },
    })

    vim.lsp.config('*', {
      capabilities = {
        textDocument = {
          semanticTokens = {
            multilineTokenSupport = true,
          }
        }
      }
    })
  end,
}
