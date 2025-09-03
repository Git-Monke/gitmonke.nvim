for _, key in ipairs({ 'h', 'j', 'k', 'l' }) do
  vim.keymap.set("n", "<C-" .. key .. ">", "<C-w>" .. key, { silent = true })
end

for _, key in ipairs({ 'h', 'j', 'k', 'l' }) do
  vim.keymap.set("t", "<C-" .. key .. ">", "<C-\\><C-n><C-w>" .. key, { silent = true })
end

vim.keymap.set("t", "<C-x>", "<C-\\><C-n>", { silent = true })

-- Format file
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})

-- Quick vertical / horizontal terminal splits
vim.keymap.set("n", "<leader>v", "<cmd>belowright 80vsplit | terminal<CR>", {})
vim.keymap.set("n", "<leader>h", "<cmd>belowright 20split | terminal<CR>", {})

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

vim.keymap.set("n", "<leader>df", "<cmd>Lspsaga peek_definition<CR>", {})

vim.keymap.set("n", "<C-f>", function() vim.lsp.buf.format({ async = true }) end, {})


vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = 'Open diagnostic message' })

vim.keymap.set("n", "<leader>]", vim.diagnostic.goto_next, { desc = 'Open diagnostic message' })
vim.keymap.set("n", "<leader>[", vim.diagnostic.goto_prev, { desc = 'Open diagnostic message' })


vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = 'Go to definition' })
