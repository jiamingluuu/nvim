require("plugins-setup")
require("core.options")
require("core.keymaps")
require("core.colorscheme")
require("core.coc")

-- plugin settings
-- text edit
require("plugins.indent_blankline")
require("plugins.comment")
require("plugins.autopairs")

-- visual effects
require("plugins.lualine")
require("plugins.virtcolumn")
require("plugins.nvim-treesitter")

-- file finder
require("plugins.telescope")

-- language support
require("plugins.vimtex")
require("plugins.markdownpreview")

-- some command to install treesitter
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})
