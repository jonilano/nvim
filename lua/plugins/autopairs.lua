return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup {
      check_ts = true, -- optional: better context-aware pairing
    }

    -- Custom Tab keymap logic for skipping certain characters
    vim.keymap.set("i", "<Tab>", function()
      local col = vim.fn.col "."
      local line = vim.fn.getline "."
      local next_char = line:sub(col, col)

      local skip_chars = {
        [")"] = true,
        ["]"] = true,
        ["}"] = true,
        [">"] = true,
        ['"'] = true,
        ["'"] = true,
        ["`"] = true,
      }

      if skip_chars[next_char] then
        return "<Right>"
      else
        return "<Tab>"
      end
    end, { expr = true, silent = true })
  end,
}
