return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  config = function()
-- Assign UFO to a variable
local ufo = require('ufo')

-- Configure UFO
ufo.setup({
  provider_selector = function(bufnr, filetype, buftype)
    return { 'lsp', 'indent' }
  end
})


-- Keybindings
-- 'za' - toggle fold
    vim.keymap.set('n', 'zR', ufo.openAllFolds, { desc = 'Open all folds' })
vim.keymap.set('n', 'zM', ufo.closeAllFolds, { desc = 'Close all folds' })
vim.keymap.set('n', 'zK', function()
      local winid = ufo.peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
      end, { desc = 'Peek folded lines under cursor' })
  end
}
