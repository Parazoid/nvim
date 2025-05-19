vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "{<CR>", "{}<Esc>ha<CR><Esc><S-o>")
vim.keymap.set("i", "<Alt><Bs>", "<Esc>l")
vim.keymap.set("n", "<leader>pd", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>ff", function() vim.lsp.buf.format() end)
