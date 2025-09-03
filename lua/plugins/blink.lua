return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',

  opts = {
    keymap = {
      preset = 'default',

      ['<C-CR>'] = {
        function(cmp) cmp.accept() end
      },

      ['<C-j>'] = {
        function(cmp) cmp.select_next() end
      },

      ['<C-k>'] = {
        function(cmp) cmp.select_prev() end
      },
    },

    appearance = {
      nerd_font_variant = 'mono'
    },
  },
  opts_extend = { "sources.default" }
}
