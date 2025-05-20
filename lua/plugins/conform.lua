local Lsp = require "utils.lsp"

return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    { "<leader>cn", "<cmd>ConformInfo<cr>", desc = "Conform Info" },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt" },
      javascript = { "biome", "deno_fmt", "prettierd", "prettier", stop_after_first = true },
      typescript = { "biome", "deno_fmt", "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      biome = {
        condition = function()
          local path = Lsp.biome_config_path()
          -- Skip if biome.json is in nvim
          local is_nvim = path and string.match(path, "nvim")

          if path and not is_nvim then
            return true
          end

          return false
        end,
      },
      deno_fmt = {
        condition = function()
          return Lsp.deno_config_exist()
        end,
      },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  },
  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
