return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- FORMATTING
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        require("none-ls.formatting.ruff"),
        --null_ls.builtins.formatting.djlint,

        -- DIAGNOSTICS
        require("none-ls.diagnostics.eslint_d"),
        require("none-ls.diagnostics.ruff"),

        -- CODE ACTIONS
        --null_ls.builtins.code_actions.eslint_d, -- Auto-fix ESLint errors
        null_ls.builtins.code_actions.gitsigns, -- Git conflict resolution

        -- HOVER
        null_ls.builtins.hover.dictionary, -- Word definitions
        null_ls.builtins.hover.printenv, -- Environment variable info

        --null_ls.builtins.completion.spell,
      },
      -- Set up format on save
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              vim.cmd("silent! undojoin")
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
      debug = true,
    })
    -- Fallback if format on save is not working.
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
