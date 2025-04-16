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
			-- Set up format on save
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						callback = function()
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
