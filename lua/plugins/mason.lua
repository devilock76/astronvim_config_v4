-- Customize Mason plugins

---@type LazySpec
return {
  {
    "williamboman/mason.nvim",
    opts = {
      pip = {
        upgrade_pip = true,
      },
    },
  },
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "bashls",
        "eslint",
        "jedi_language_server",
        "remark_ls",
        "ruff_lsp",
        "terraformls",
        "tflint",
        "tsserver",
        "yamlls",
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "stylua",
        "prettier",
        "stylua",
        "eslint_d",
        "markdownlint",
        "ruff",
        "shellcheck",
        "tflint",
        "yamllint",
        "markdownlint",
        "prettier",
        "prettierd",
        -- add more arguments for adding more null-ls sources
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "python",
        "bash-debug-adapter",
        "debugpy",
        "js-debug-adapter",
        -- add more arguments for adding more debuggers
      })
    end,
  },
}
