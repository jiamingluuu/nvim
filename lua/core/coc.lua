local g = vim.g
local api = vim.api
local cmd = api.nvim_command
local fn = vim.fn
local opt = vim.opt
local keyset = vim.keymap.set

-- Auto complete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: There's always complete item selected by default, you may want to enable
-- no select by `"suggest.noselect": true` in your configuration file.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

opt.updatetime=100

local function register_mappings(mappings, default_options)
	for mode, mode_mappings in pairs(mappings) do
		for _, mapping in pairs(mode_mappings) do
			local options = #mapping == 3 and table.remove(mapping) or default_options
			local prefix, cmd = unpack(mapping)
			pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
		end
	end
end

g.coc_global_extensions = {
    "coc-clangd",
    "coc-prettier",
    "coc-diagnostic",
    "coc-tsserver",
    "coc-vimtex",
    "coc-explorer",
    "coc-pairs"
}

function _G.show_docs()
    local cw = fn.expand('<cword>')
    if fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
        cmd('h ' .. cw)
    elseif api.nvim_eval('coc#rpc#ready()') then
        fn.CocActionAsync('doHover')
    else
        cmd('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

local mappings = {
    n = {
        {"tt", ":CocCommand explorer<CR>"}
    }
}

register_mappings(mappings, { silent = true, noremap = true })

