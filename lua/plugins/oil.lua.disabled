return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = false,
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  config = function(_, opts)
    require("oil").setup(opts)

    -- Keymap: Pressing "-" opens Oil in a floating window
    vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
    -- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
