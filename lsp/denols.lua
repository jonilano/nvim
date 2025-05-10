local Lsp = require "utils.lsp"

return vim.lsp.config("denols", {
  cmd = { "deno", "lsp" },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
  init_options = {
    enable = true,
    lint = true,
    unstable = true,
  },
  on_attach = Lsp.on_attach,
  root_dir = function(bufnr, on_dir)
    local root = vim.fs.root(bufnr, { "deno.json", "deno.jsonc" })
    if root then
      on_dir(root)
    end
  end,
})
