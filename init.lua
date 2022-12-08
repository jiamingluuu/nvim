require("plugins-setup")
require("core.options")
require("core.keymaps")
require("core.colorscheme")
-- require("core.coc")

-- plugin settings
-- text edit
require("plugins.indent_blankline")
require("plugins.comment")
require("plugins.autopairs")

-- visual effects
require("plugins.lualine")
require("plugins.virtcolumn")
require("plugins.nvim-treesitter")
require("plugins.dashboard")

-- file finder
require("plugins.telescope")
require("plugins.nvim-tree")

-- language support
require("plugins.vimtex")
require("plugins.markdownpreview")
require("plugins.cmp")

require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.lspconfig")
require("plugins.lsp-signature")
