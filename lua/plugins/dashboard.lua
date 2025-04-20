return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  --@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        { section = "header" },
        { section = "keys",   gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
  },
}

-- TODO:
--  Add sessions.
