require("core.options")

if vim.g.vscode then
    -- VSCode extension
    vim.keymap.set("n", "H", "5h")
    vim.keymap.set("n", "J", "5j")
    vim.keymap.set("n", "K", "5k")
    vim.keymap.set("n", "L", "5l")
    vim.keymap.set("n", "C", "J")

    vim.keymap.set("v", "H", "5h")
    vim.keymap.set("v", "J", "5j")
    vim.keymap.set("v", "K", "5k")
    vim.keymap.set("v", "L", "5l")

    vim.opt.so = 8
else
    require("core.keymaps")
    require("plugins.comment")
    -- ordinary Neovim
    require("core.keymaps")

    require("plugins-setup")
    require("core.colorscheme")

    -- plugin settings
    -- text edit
    require("plugins.indent_blankline")
    require("plugins.autopairs")
    require("plugins.neorg")

    -- interface
    -- require("plugins.lualine")
    require("plugins.virtcolumn")
    require("plugins.nvim-treesitter")
    require("plugins.bufferline")
    require("plugins.gitsigns")

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
end
