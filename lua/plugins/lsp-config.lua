return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "pyright",
          "ruff",
          "jinja_lsp",
          --"tsserver",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      --Enable (broadcasting) snippet capability for completion
      --local capabilities = vim.lsp.protocol.make_client_capabilities()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      --capabilities.textDocument.completion.completionItem.snippetSupport = true

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.jinja_lsp.setup({
        capabilities = capabilities,
        filetypes = { "nunjucks" }, -- Handle .njk files
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({})
      lspconfig.pyright.setup({
        capabilities = capabilities,
        settings = {
          pyright = {
            -- Using Ruff's import organizer
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              -- Ignore all files for analysis to exclusively use Ruff for linting
              ignore = { "*" },
            },
          },
        },
      })
      lspconfig.ruff.setup({})
      --lspconfig.tsserver.setup({})
      ---- Associate .njk files with Nunjucks filetype
      vim.filetype.add({
        extension = { njk = "nunjucks" },
        -- Optional: Force .html files to stay HTML
        pattern = {
          ["*.njk"] = "nunjucks",
          ["*.html"] = "html",
        },
      })

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
