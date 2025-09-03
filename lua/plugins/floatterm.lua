return {
  "voldikss/vim-floaterm",
  keys = {
    { "<C-t>", "<cmd>FloatermToggle<cr>", desc = "Toggle floating term" },
  },
  config = function()
    vim.g.floaterm_keymap_new    = "<C-t>"
    vim.g.floaterm_keymap_toggle = "<C-t>"
    vim.g.floaterm_width         = 0.9
    vim.g.floaterm_height        = 0.8
  end,
}
