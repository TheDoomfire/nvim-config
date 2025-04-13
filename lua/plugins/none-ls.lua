return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        --null_ls.builtins.formatting.ruff,
        --null_ls.builtins.diagnostics.eslint_d,
        require("none-ls.diagnostics.eslint_d"),
        require("none-ls.diagnostics.ruff"),
        require("none-ls.formatting.ruff"),
        --require("none-ls.diagnostics.ruff"),
        --null_ls.builtins.completion.spell,
        --require("none-ls.diagnostics.eslint_d"),
      },
      debug = true,
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
