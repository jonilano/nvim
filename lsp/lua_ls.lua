local Lsp = require "utils.lsp"
return {
  cmd = { "lua-language-server" },
  on_attach = Lsp.on_attach,
  filetypes = { "lua" },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    },
  },
  root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
}
