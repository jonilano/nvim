-- OPTIONS
local opt = vim.opt

--line nums
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- indentation and tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.inccommand = "split"

-- appearance
opt.termguicolors = true
opt.showmode = false

-- clipboard
-- opt.clipboard:append("unnamedplus")

-- split windows
opt.splitbelow = true
opt.splitright = true

-- keep cursor at least # rows from top/bot
opt.scrolloff = 999
opt.wrap = false

opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

opt.completeopt = "menu,menuone,noselect,fuzzy"

-- Diagnostic settings
local diagnostics = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " ",
}
vim.diagnostic.config {
  underline = true,
  update_in_insert = false,
  virtual_text = {
    spacing = 4,
    source = "if_many",
    prefix = "●",
  },
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = diagnostics.Error,
      [vim.diagnostic.severity.WARN] = diagnostics.Warn,
      [vim.diagnostic.severity.HINT] = diagnostics.Hint,
      [vim.diagnostic.severity.INFO] = diagnostics.Info,
    },
  },
}

-- Disable providers
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
