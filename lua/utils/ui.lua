local M = {}

function M.enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

function _G.ReloadPalette()
  package.loaded["config.palette"] = nil
  local palette = require "config.palette"
  vim.cmd.colorscheme(palette.nvim.colorscheme)
end

return M
