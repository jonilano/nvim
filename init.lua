require "config.autocmds"
require "config.options"
require "config.keymaps"
require "config.lazy"

local palette = require "config.palette"
vim.cmd.colorscheme(palette.nvim.colorscheme)

local ui = require "utils.ui"
ui.enable_transparency()

vim.lsp.enable { "biome", "clangd", "denols", "lua_ls", "rust_analyzer", "tsserver" }
