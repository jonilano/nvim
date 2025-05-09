require("config.autocmds")
require("config.options")
require("config.keymaps")
require("config.lazy")

vim.lsp.enable({ "clangd", "lua_ls", "rust_analyzer", "tsserver" })
