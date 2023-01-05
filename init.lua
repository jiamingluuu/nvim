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
require("plugins.neorg")

-- interface
require("plugins.lualine")
require("plugins.virtcolumn")
require("plugins.nvim-treesitter")
require("plugins.dashboard")
require("plugins.bufferline")

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

require("plugins.toggle_term")
require("plugins.symbols-outline")
