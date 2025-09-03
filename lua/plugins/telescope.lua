return {
  "nvim-telescope/telescope.nvim",
  opts = {
    file_ignore_patterns = { "node_modules", ".git/", "dist/" },
    vimgrep_arguments = {
      'rg',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden'
    },
  }
}
