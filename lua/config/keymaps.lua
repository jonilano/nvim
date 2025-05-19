vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- breaking the habit
-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert with jk" })
-- vim.keymap.set("v", "<leader>jk", "<ESC>", { desc = "Exit visual" })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- Better up/down (handles wrapping)
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move Lines (set macos-option-as-alt )
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

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

-- commenting
vim.keymap.set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
vim.keymap.set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go { severity = severity }
  end
end

vim.keymap.set("n", "<leader>xx", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
vim.keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- Use CTRL-space to trigger LSP completion.
-- Use CTRL-Y to select an item. |complete_CTRL-Y|
vim.keymap.set("i", "<c-space>", function()
  vim.lsp.completion.get()
end)

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- Indents around a paragraph (ap text object) without moving the cursor.
-- vim.keymap.set("n", "=ap", "ma=ap'a")
-- below doesn't leave a mark
vim.keymap.set("n", "=ap", function()
  local curpos = vim.fn.getpos "."
  vim.cmd "normal! =ap"
  vim.fn.setpos(".", curpos)
end)
