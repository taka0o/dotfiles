local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

vim.api.nvim_create_user_command("LazySyncOneshot", function()
  require("lazy").sync({ wait = true })
  vim.cmd("qa")
end, {})

local plugins = {
  "lewis6991/impatient.nvim",
  { "catppuccin/nvim", name = "catppuccin" },
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "GustavoKatel/telescope-asynctasks.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-telescope/telescope-project.nvim",
      "axkirillov/easypick.nvim",
    },
  },
  "lpoto/telescope-docker.nvim",
  "numToStr/Comment.nvim",
  "ThePrimeagen/harpoon",
  "mbbill/undotree",
  {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    },
  },
  "folke/which-key.nvim",
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  "feline-nvim/feline.nvim",
  "nvim-tree/nvim-web-devicons",
  "zbirenbaum/copilot.lua",
  "TimUntersberger/neogit",
  -- 'voldikss/vim-floaterm',
  "akinsho/nvim-toggleterm.lua",
  "lukas-reineke/indent-blankline.nvim",
  "sbdchd/neoformat",
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
  },
  "numToStr/Comment.nvim",
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    },
  },
  "HallerPatrick/py_lsp.nvim",
  "echasnovski/mini.nvim",
  "romgrk/barbar.nvim",
  "folke/neodev.nvim",

  -- Debugger
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "nvim-neotest/neotest-python",
  "mxsdev/nvim-dap-vscode-js",
  "theHamsta/nvim-dap-virtual-text",
  {
    "microsoft/vscode-js-debug",
    build = "npm install --legacy-peer-deps && npm run compile",
  },

  "lewis6991/gitsigns.nvim",
}

require("lazy").setup(plugins, {
  defaults = { lazy = false },
  install = { colorscheme = { "catppuccin" } },
  ui = {
    icons = {
      cmd = " ",
      config = "",
      event = " ",
      ft = " ",
      init = " ",
      keys = " ",
      plugin = " ",
      runtime = " ",
      source = " ",
      start = " ",
      task = " ",
    },
    border = "double",
  },
})
