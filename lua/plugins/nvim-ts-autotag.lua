return {
  "windwp/nvim-ts-autotag",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,             -- Auto‑close tags
        enable_rename = true,            -- Auto‑rename tag pairs
        enable_close_on_slash = false,   -- Auto‑close on `</`
      },
      per_filetype = {
        html = {
          enable_close = false,   -- Disable auto‑close for plain HTML files
        },
      },
    })
  end,
}
