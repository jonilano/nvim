return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  opts = {
    options = {
      component_separators = { left = "|", right = "|" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_b = {
        {
          "branch",
          -- icon = "", -- Change this to any icon you like
          icon = "", -- Change this to any icon you like
        },
      },
      lualine_x = {
        "encoding",
        {
          "fileformat",
          icons_enabled = false, -- <== disables the platform icon
        },
        "filetype",
      },
    },
  },
}
