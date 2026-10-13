return {

  -- Utils
  { "nvim-lua/plenary.nvim" },
  { "nvim-lua/popup.nvim" },

  -- Config / Lua dev
  {
    "folke/neodev.nvim",
    opts = {},
  },

  -- Startup screens
  {
    "startup-nvim/startup.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "MaximilianLloyd/ascii.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
  },

  -- Themes
  { "catppuccin/nvim",            name = "catppuccin" },
  { "nvim-tree/nvim-web-devicons" },
  { "tiagovla/tokyodark.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "rmehri01/onenord.nvim" },
  { "AlexvZyl/nordic.nvim" },
  { "Shatur/neovim-ayu" },

  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },

  { "scottmckendry/cyberdream.nvim" },
  { "xiyaowong/transparent.nvim" },
  { "rebelot/kanagawa.nvim" },

  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
  },

  { "Yazeed1s/oh-lucy.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "nyoom-engineering/oxocarbon.nvim" },

  -- Git
  {
    "FabijanZulj/blame.nvim",
    config = function()
      require("blame").setup()
    end,
  },

  { "kdheepak/lazygit.nvim" },

  -- General plugins
  { "aznhe21/actions-preview.nvim" },
  { "mattn/emmet-vim" },

  {
    "gelguy/wilder.nvim",
  },

  { "chrishrb/gx.nvim" },

  -- CMP
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-nvim-lsp" },

  -- Snippets
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },
  { "mlaursen/vim-react-snippets" },
  { "moll/vim-bbye" },

  -- LSP
  { "neovim/nvim-lspconfig" },

  {
    "williamboman/mason.nvim",
    version = "1.11.0",
  },

  {
    "williamboman/mason-lspconfig.nvim",
    version = "1.31.0",
  },

  { "nvimtools/none-ls.nvim" },
  { "simrat39/symbols-outline.nvim" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  { "nvim-telescope/telescope-media-files.nvim" },

  { "norcalli/nvim-colorizer.lua" },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
  },

  { "nvim-telescope/telescope-ui-select.nvim" },

  -- Harpoon
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
  },

  -- Comments
  { "JoosepAlviste/nvim-ts-context-commentstring" },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- DAP
  { "mfussenegger/nvim-dap" },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- Modes
  {
    "mvllow/modes.nvim",
    tag = "v0.2.0",
  },

  -- Focus
  {
    "folke/twilight.nvim",
  },

  -- Smooth cursor
  {
    "sphamba/smear-cursor.nvim",
    opts = {},
  }
}
