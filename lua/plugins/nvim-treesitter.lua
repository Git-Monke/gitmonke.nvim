return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup {
      highlight        = { enable = true },
      indent           = { enable = true },
      ensure_installed = { "lua", "python", "rust", "go", "typescript", "javascript", "html",
        "css", "json", "yaml", "toml", "markdown", "c", "cpp", "bash", "nim" }
    }
  end,
}
