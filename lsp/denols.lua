local Lsp = require "utils.lsp"

return {
  cmd = { "deno", "lsp" },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
  init_options = {
    enable = true,
    lint = true,
    unstable = true,
  },
  root_markers = { "deno.json", "deno.jsonc" },
  on_attach = Lsp.on_attach,
  workspace_required = true,
}
