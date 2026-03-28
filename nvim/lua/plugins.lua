-- Bootstrap lazy.nvim (auto-installs if not present)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Colorscheme (nightfox)
  {
    "EdenEast/nightfox.nvim",
    lazy = false,    -- load at startup so colorscheme is available
    priority = 1000, -- load before other plugins
    config = function()
      vim.cmd("colorscheme nightfox") -- change to carbonfox, duskfox, etc. as preferred
    end,
  },

  -- Trouble (diagnostics list)
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({ icons = false })
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  },
  { "nvim-treesitter/playground" },

  -- Undotree
  { "mbbill/undotree" },

  -- Fugitive (Git)
  { "tpope/vim-fugitive" },

  -- LSP Zero (v1.x)
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP Support
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      -- Autocompletion
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      -- Snippets
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
  },

  -- Cellular Automaton (the fun one)
  { "eandrju/cellular-automaton.nvim" },

  -- Neo-tree (file explorer)
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },

  -- Commentary
  { "tpope/vim-commentary" },

  -- Lualine (statusline)
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup()
    end,
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- Markdown Preview
  --{--
    --"iamcco/markdown-preview.nvim",
    --build = function()
      --vim.fn["mkdp#util#install"]()
    --end,
  --},
  
  {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
  ft = { "markdown" },
  build = "cd app && npm install",
},

  -- Claude Code (Neovim IDE integration)
  {
    "coder/claudecode.nvim",
    opts = {},
  },

})
