--vim.keymap.set("v", "<leader>y", '"+y', { noremap = true })
--vim.keymap.set("n", "<leader>p", '"+p', { noremap = true })

-- Select all with Alt+a.
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, desc = "Select all" })

-- Move lines with Alt+Up/Down
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Copy lines with Alt+Shift+Up/Down
vim.keymap.set("n", "<A-S-Up>", ":copy .-1<CR>", { desc = "Copy line up" })
vim.keymap.set("n", "<A-S-Down>", ":copy .<CR>", { desc = "Copy line down" })
vim.keymap.set("v", "<A-S-Down>", ":copy '><CR>gv", { desc = "Copy selection down" })
vim.keymap.set("v", "<A-S-Up>", ":copy '<-1<CR>gv", { desc = "Copy selection up" })
vim.keymap.set("v", "<A-S-Down>", ":copy '><CR>gv", { desc = "Copy selection down" })
