local status_ok, _ = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "cpp", "python", "lua", "rust", "markdown"},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,
    -- parser_install_dir = "~/Users/q/.local/share/nvim/site/pack/packer/start/nvim-treesitter/parser",

    highlight = {
        -- `false` will disable the whole extension
        enable = true,
    },
    vim.opt.runtimepath:append("~//Users/q/.local/share/nvim/site/pack/packer/start/nvim-treesitter/parser")
}
