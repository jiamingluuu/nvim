-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
    return
end


-- add list of plugins to install
return packer.startup(function(use)
    -- packer can manage itself
    use("wbthomason/packer.nvim")

    -- colorschemes
    use("theniceboy/nvim-deus")
    use("Mofiqul/vscode.nvim")
    use("rebelot/kanagawa.nvim")
    use("ellisonleao/gruvbox.nvim")

    -- debugger
    use("puremourning/vimspector")

    -- latex
    use("lervag/vimtex")
    use("xuhdev/vim-latex-live-preview")

    -- text edit
    use("tpope/vim-surround")
    use("gcmt/wildfire.vim")    -- use ENTER to select chars in parentheses
    use("mg979/vim-visual-multi")   -- multi-cursor
    use("vimwiki/vimwiki")
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use("numToStr/Comment.nvim")
    use {
        "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {
            }
        end,
        requires = "nvim-lua/plenary.nvim"
    }

    -- snippets
    use("L3MON4D3/LuaSnip")  --snippet engine

    -- markdown
    use {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    }

    -- telescope
    use("nvim-lua/plenary.nvim")
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    }

    -- coc
    -- use {'neoclide/coc.nvim', branch = 'release'}

    -- ide-like conifg
    use("simrat39/symbols-outline.nvim")
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
    }
    use("akinsho/toggleterm.nvim")  -- terminal 

    -- cmp
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/nvim-cmp')

    use("ray-x/lsp_signature.nvim")

    -- lsp
    use("williamboman/mason.nvim")  -- lsp installer
    use("williamboman/mason-lspconfig.nvim")    -- bridge mason and lspconfig
    use("neovim/nvim-lspconfig")

    use("rhysd/vim-healthcheck")

    -- visual effect
    use("lukas-reineke/indent-blankline.nvim")  -- show indent
    use("glepnir/dashboard-nvim")   -- starting menu
    use("kyazdani42/nvim-web-devicons")     -- snazzy icons
    use("nvim-lualine/lualine.nvim")
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use("lukas-reineke/virt-column.nvim")   -- verticle bar to 

    -- fancy highlights
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }


end)
