return {
  "kylechui/nvim-surround",
  version = "*", -- Use the latest stable version
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({})
  end,
}
