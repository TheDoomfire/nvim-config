return {
  "rmagatti/auto-session",
  lazy = false,
  config = function()
    require("auto-session").setup({
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      session_lens = {
        load_on_setup = true, -- Initialize on startup (requires Telescope)
        theme_conf = {
          border = true,
        },
        previewer = false, -- File preview for session picker
-- auto_restore_last_session = false, -- On startup, loads the last saved session if session for cwd does not exist
      },
      -- All sessions. TODO: Add to dashboard?
      vim.keymap.set("n", "<Leader>ls", require("auto-session.session-lens").search_session, { noremap = true }),
    })
  end,
}
