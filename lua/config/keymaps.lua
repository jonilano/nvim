-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert with jk" })
vim.keymap.set("v", "<leader>jk", "<ESC>", { desc = "Exit visual" })

-- move selection up/down one line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode ("n"):
-- Normally, J joins the current line with the next line.
-- This version saves your cursor position first (mz marks it temporarily), joins the lines (J), then jumps back to the saved spot (\z`).
-- It prevents your cursor from jumping weirdly when joining lines.
vim.keymap.set("n", "J", "mzJ`z")

-- In normal mode, when scrolling half-page up/down with <C-d> and <C-u>, you recenter the cursor vertically (zz).
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- In normal and visual modes, deletes text to the black hole register (doesn't affect clipboard)
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d') -- delete without copying
vim.keymap.set({ "n", "v" }, "<leader>c", '"_c') -- change without copying

-- In visual mode:
-- <space>p pastes without overwriting your clipboard (delete into the black hole register before pasting).
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- In normal and visual modes, copies text to the system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- In normal mode, copies the current line to the system clipboard

-- After jumping to next/previous search results (n/N):
-- Recenter the view (zzzv) so your cursor stays vertically centered.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Indents around a paragraph (ap text object) without moving the cursor.
vim.keymap.set("n", "=ap", "ma=ap'a")
