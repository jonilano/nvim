require "config.autocmds"
require "config.options"
require "config.keymaps"
require "config.lazy"

vim.lsp.enable { "biome", "clangd", "denols", "lua_ls", "rust_analyzer", "tsserver" }
