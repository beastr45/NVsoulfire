local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim"  -- Useful lua functions used ny lots of plugins



    --FINISH THIS LATER
    --Custom plugins
    --Put all plugins from the internet here


    --colorschemes
    --use "olimorris/onedarkpro.nvim"
    use "NLKNguyen/papercolor-theme"
    --auto pair ex. ()
    use "tmsvg/pear-tree"


    --nvim-tree
    use "nvim-tree/nvim-web-devicons"
    use "nvim-tree/nvim-tree.lua"

    -- tabs
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

    -- cmp plugins
    use "hrsh7th/nvim-cmp"         -- Completion plugin
    use "hrsh7th/cmp-buffer"       -- buffer completions
    use "hrsh7th/cmp-path"         -- path completions
    use "hrsh7th/cmp-cmdline"      -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completion
    use "hrsh7th/cmp-nvim-lsp"     -- lsp completion

    use "dcampos/cmp-emmet-vim"

    --snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- --emmet
    use "mattn/emmet-vim"

    -- LSP
    use "neovim/nvim-lspconfig"             -- enable LSP
    use "williamboman/mason.nvim"           -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
    use 'jose-elias-alvarez/null-ls.nvim'   -- LSP diagnostics and code actions

    -- treesitter
    use "nvim-treesitter/nvim-treesitter"

    -- display registers
    -- "copy+paste"
    use {
        "tversteeg/registers.nvim",
        config = function()
            require("registers").setup()
        end,
    }
    --autosave
    use "Pocco81/auto-save.nvim"

    -- status bar
    use { 'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }


    --telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }


    --terminal toggle
    use "akinsho/toggleterm.nvim"



    --startup screen
    -- use {
    --   "startup-nvim/startup.nvim",
    --   requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    --   config = function()
    --     require "startup".setup()
    --   end
    -- }

    --indent guides for empty spaces
    use "lukas-reineke/indent-blankline.nvim"

    --commenting highlighted text support
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }


    -- code actions plugin
    use { "weilbith/nvim-code-action-menu",
        cmd = 'CodeActionMenu' }


    --git plugins vimfugitive
    use "tpope/vim-fugitive"

    --gitsigns
    --perhaps we will make a config file for this
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    --moving plugin for ease of use
    use "matze/vim-move"

    --hopping plugin for easy navigation
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }




    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
