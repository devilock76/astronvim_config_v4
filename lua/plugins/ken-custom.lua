return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "tpope/vim-surround", lazy = false },
  -- {
  --   "dpayne/CodeGPT.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'MunifTanjim/nui.nvim',
  --   },
  --   config = function()
  --     require("codegpt.config")
  --   end
  -- },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
  },
  {
    "klen/nvim-test",
    event = "VeryLazy",
    config = function()
      require("nvim-test").setup {
        run = true, -- run tests (using for debug)
        commands_create = true, -- create commands (TestFile, TestLast, ...)
        filename_modifier = ":p:.", -- modify filenames before tests run(:h filename-modifiers)
        silent = false, -- less notifications
        term = "terminal", -- a terminal to run ("terminal"|"toggleterm")
        termOpts = {
          direction = "vertical", -- terminal's direction ("horizontal"|"vertical"|"float")
          width = 128, -- terminal's width (for vertical|float)
          height = 24, -- terminal's height (for horizontal|float)
          go_back = false, -- return focus to original window after executing
          stopinsert = "auto", -- exit from insert mode (true|false|"auto")
          keep_one = true, -- keep only one terminal for testing
        },
        runners = {
          -- setup tests runners
          cs = "nvim-test.runners.dotnet",
          go = "nvim-test.runners.go-test",
          haskell = "nvim-test.runners.hspec",
          javascriptreact = "nvim-test.runners.jest",
          javascript = "nvim-test.runners.jest",
          lua = "nvim-test.runners.busted",
          python = "nvim-test.runners.pytest",
          ruby = "nvim-test.runners.rspec",
          rust = "nvim-test.runners.cargo-test",
          typescript = "nvim-test.runners.jest",
          typescriptreact = "nvim-test.runners.jest",
        },
      }
    end,
  },
  {
    "mrjones2014/smart-splits.nvim",
    event = "VeryLazy",
    config = function()
      vim.keymap.set("n", "<C-[>", require("smart-splits").resize_left)
      vim.keymap.set("n", "<C-;>", require("smart-splits").resize_down)
      vim.keymap.set("n", "<C-p>", require("smart-splits").resize_up)
      vim.keymap.set("n", "<C-]>", require("smart-splits").resize_right)
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function() require("chatgpt").setup() end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      shell = "/usr/bin/fish",
    },
  },
}
