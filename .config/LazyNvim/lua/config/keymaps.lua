-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- better exits
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "jk as <ESC> key" })
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Exit terminal mode" })

-- open oil with hyphen
vim.keymap.set("n", "-", require("oil").open_float, { desc = "Open parent directory" })

-- open definition in split (horizontal and vertical)
vim.keymap.set(
  "n",
  "gH",
  ":split<CR>gd",
  { noremap = true, silent = true, desc = "Open definition in horizontal split" }
)
vim.keymap.set(
  "n",
  "gV",
  ":vsplit<CR>gd",
  { noremap = true, silent = true, desc = "Open definition in vertical split" }
)
