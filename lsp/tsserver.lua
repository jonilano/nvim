local Lsp = require "utils.lsp"

return vim.lsp.config("tsserver", {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  init_options = { hostInfo = "neovim" },
  on_attach = Lsp.on_attach,
  root_dir = function(bufnr, on_dir)
    -- Only enable tsserver if it's *not* a Deno project
    local deno_root = vim.fs.root(bufnr, { "deno.json", "deno.jsonc" })
    if not deno_root then
      local root = vim.fs.root(bufnr, {
        "tsconfig.json",
        "jsconfig.json",
        "package.json",
        ".git",
      })
      if root then
        on_dir(root)
      end
    end
  end,
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "literals",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = false,
        includeInlayVariableTypeHints = false,
        includeInlayVariableTypeHintsWhenTypeMatchesName = false,
        includeInlayPropertyDeclarationTypeHints = false,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
      implementationsCodeLens = { enabled = true },
      referencesCodeLens = { enabled = true, showOnAllFunctions = true },
      format = {
        indentSize = vim.o.shiftwidth,
        convertTabsToSpaces = vim.o.expandtab,
        tabSize = vim.o.tabstop,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayVariableTypeHints = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHintsWhenTypeMatchesName = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
      implementationsCodeLens = { enabled = true },
      referencesCodeLens = { enabled = true, showOnAllFunctions = true },
      format = {
        indentSize = vim.o.shiftwidth,
        convertTabsToSpaces = vim.o.expandtab,
        tabSize = vim.o.tabstop,
      },
    },
    completions = {
      completeFunctionCalls = true,
    },
  },
})
