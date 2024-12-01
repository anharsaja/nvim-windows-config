if vim.loader then
  vim.loader.enable()
end

_G.dd = function(...)
  require("util.debug").dump(...)
end
vim.print = _G.dd

-- Mengatur shortcut untuk keluar
vim.api.nvim_set_keymap("n", "<leader>q", ":q!<CR>", { noremap = true, silent = true })

-- Shortcut untuk membuka terminal split horizontal
vim.api.nvim_set_keymap("n", "<leader>th", ":terminal<CR>", { noremap = true, silent = true })

-- Shortcut untuk membuka terminal split vertikal
vim.api.nvim_set_keymap("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

-- Shortcut untuk keluar dari terminal ke mode normal
vim.api.nvim_set_keymap("n", "<C-q>", ":bd!<CR>", { noremap = true, silent = true })

-- Shortcut untuk keluar dari mode insert di terminal
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Shortcut untuk membuka terminal di split bawah
vim.api.nvim_set_keymap("n", "<leader>tb", ":split | terminal<CR>", { noremap = true, silent = true })

require("config.lazy")
