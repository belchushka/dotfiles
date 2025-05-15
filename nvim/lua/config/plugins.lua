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

vim.cmd [[packadd packer.nvim]]

-- Install your plugins here
return packer.startup(function(use)
  -- Python
  use { "petobens/poet-v" }

  -- Avante
  use {
    "yetone/avante.nvim",
    requires = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'MeanderingProgrammer/render-markdown.nvim',
      'hrsh7th/nvim-cmp',
      'nvim-tree/nvim-web-devicons',
      'HakonHarnes/img-clip.nvim',
      'zbirenbaum/copilot.lua'
    },
    branch = 'main',
    run = 'make',
  }

  --Copilot
  use { "zbirenbaum/copilot.lua" }

  --Config
  use { "folke/neodev.nvim", opts = {} }

  -- Startup
  use {
    "startup-nvim/startup.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  }

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons', 'nvim-lua/plenary.nvim' },
  }

  use({
    "MaximilianLloyd/ascii.nvim",
    requires = {
      "MunifTanjim/nui.nvim"
    }
  })
  -- Tree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }
  use "nvim-tree/nvim-tree.lua"

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'nvim-tree/nvim-web-devicons'
  use "tiagovla/tokyodark.nvim"
  use { "ellisonleao/gruvbox.nvim" }
  use 'rmehri01/onenord.nvim'
  use 'AlexvZyl/nordic.nvim'
  use 'ayu-theme/ayu-vim'
  use {
    "mcchrish/zenbones.nvim",
    requires = "rktjmp/lush.nvim"
  }
  use { "scottmckendry/cyberdream.nvim" }
  use "xiyaowong/transparent.nvim"
  use "rebelot/kanagawa.nvim"
  use { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 }
  use { "rose-pine/neovim", name = "rose-pine" }
  use { 'Yazeed1s/oh-lucy.nvim' }
  use 'projekt0n/github-nvim-theme'
  use { 'nyoom-engineering/oxocarbon.nvim' }

  -- Git
  use {
    "FabijanZulj/blame.nvim",
    config = function()
      require("blame").setup()
    end
  }

  -- Plugins
  use {
    "aznhe21/actions-preview.nvim",
  }
  use 'mattn/emmet-vim'
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"  -- Useful lua functions used ny lots of plugins
  use "sphamba/smear-cursor.nvim"


  use {
    'gelguy/wilder.nvim',
    config = function()
      local wilder = require('wilder')
      wilder.setup({
        modes = { ':', '/', '?' },
        next_key = '<Tab>',
        previous_key = '<S-Tab>'
      })
      wilder.set_option('renderer', wilder.renderer_mux({
        [':'] = wilder.popupmenu_renderer({
          highlighter = wilder.basic_highlighter(),
        }),
        ['/'] = wilder.wildmenu_renderer({
          highlighter = wilder.basic_highlighter(),
        }),
      }))
    end
  }
  use 'chrishrb/gx.nvim'

  -- Cmp
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "David-Kunz/cmp-npm"
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "mlaursen/vim-react-snippets"
  use "moll/vim-bbye"

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use { "williamboman/mason.nvim", tag = "v1.11.0" }
  use { "williamboman/mason-lspconfig.nvim", tag = "v1.31.0" }
  use "nvimtools/none-ls.nvim"
  use {
    "pmizio/typescript-tools.nvim",
    requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use { 'nvim-telescope/telescope-ui-select.nvim' }


  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- Autopairs
  use {
    "windwp/nvim-autopairs"
  }

  -- Comments
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- ToggleTerm
  use { "akinsho/toggleterm.nvim", tag = '*' }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
  }

  use 'mfussenegger/nvim-dap'
  use "akinsho/bufferline.nvim"

  use({
    'mvllow/modes.nvim',
    tag = 'v0.2.0',
  })

  use({ "folke/twilight.nvim" })
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
