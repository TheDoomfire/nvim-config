return {
	"folke/snacks.nvim",
	--config = function()
		--require("snacks").setup({
			priority = 1000,
			lazy = false,
			--@type snacks.Config
			opts = {
    bigfile = { enabled = true },
				dashboard = {
					enabled = true,
					sections = {
						{ section = "header" },
						{ section = "keys", gap = 1, padding = 1 },
						{ section = "startup" },
						{
							section = "terminal",
          -- TODO: Make terminal work with linux too.
                            cmd = "git --version",
							random = 10,
							pane = 2,
							indent = 4,
							height = 10,
						},
					},
				},
			},
		--})
	--end,
}
