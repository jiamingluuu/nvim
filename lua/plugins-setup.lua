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
    use("theniceboy/vim-deus")

    -- debugger
    use("puremourning/vimspector")

    -- latex
    use("lervag/vimtex")
    use("xuhdev/vim-latex-live-preview")

    -- text edit
    use("tpope/vim-surround")
    use("gcmt/wildfire.vim")
    use("mg979/vim-visual-multi")
    use("vimwiki/vimwiki")

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- fzf
    -- use { 'junegunn/fzf', run = "fzf#install()" }
    use("nvim-lua/plenary.nvim")
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    }

    -- coc
    use {'neoclide/coc.nvim', branch = 'release'}

    use("liuchengxu/vista.vim")

    use("rhysd/vim-healthcheck")

    --visual effect
    use("lukas-reineke/indent-blankline.nvim")
    use("glepnir/dashboard-nvim")
    use("kyazdani42/nvim-web-devicons")
    use("nvim-lualine/lualine.nvim")
    -- use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use("lukas-reineke/virt-column.nvim")
    use("numToStr/Comment.nvim")
    use("nvim-treesitter/nvim-treesitter")


end)
