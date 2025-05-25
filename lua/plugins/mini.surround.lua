return {
  "echasnovski/mini.surround",
  version = false, -- latest
  config = function()
    require("mini.surround").setup {
      -- Optional custom config to mimic vim-surround
      mappings = {
        add = "ys",
        delete = "ds",
        replace = "cs",
        find = "",
        find_left = "",
        highlight = "",
        update_n_lines = "",
      },
      custom_surroundings = {
        ["("] = { output = { left = "( ", right = " )" } },
        ["["] = { output = { left = "[ ", right = " ]" } },
        ["{"] = { output = { left = "{ ", right = " }" } },
        ["<"] = { output = { left = "< ", right = " >" } },
      },
      search_method = "cover_or_next",
    }

    -- Visual mode mapping: S to surround selection
    vim.keymap.set("x", "S", [[:<C-u>lua MiniSurround.add('visual')<CR>]], { noremap = true })

    -- Add surround for entire line using yss
    vim.api.nvim_set_keymap("n", "yss", "ys_", { noremap = false })
  end,
}
