local opt = vim.opt -- for conciseness

-- line numbers
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.so = 8
opt.expandtab = true

-- line wrapping
opt.wrap = false

-- search setting
opt.ignorecase = true
opt.smartcase = true

-- cursor line
-- opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = "80"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windos
opt.splitright = true
opt.splitbelow = true

opt.conceallevel = 0

opt.iskeyword:append("-")

