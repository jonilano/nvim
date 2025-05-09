return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    theme = "wave",
    background = {
      dark = "wave",
      light = "lotus",
    },
  },
  config = function()
    vim.cmd.colorscheme "kanagawa"
  end,
}
