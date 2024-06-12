-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---------------------
-- General Keymaps
---------------------

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open/close netrw explorer" })
keymap.set("i", "jk", "<ESC>", { desc = "Go to insert mode" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "x", '"_x', { desc = "Delete single character without copying into register" })
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number by 1" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number by 1" })
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>ws", "<C-w>=", { desc = "Split window with equal width and height" })
keymap.set("n", "<leader>wc", ":close<CR>", { desc = "Close current splitted window" })
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>m", ":MaximizerToggle<CR>", { desc = "Maximize window" })
keymap.set("n", "+", ":m +1<CR>", { desc = "Move one line down" })
keymap.set("n", "-", ":m -2<CR>", { desc = "Move one line up" })
