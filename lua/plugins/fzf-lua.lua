return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },
  opts = {
    keymap = {
      fzf = {
        true,
        -- Use <c-q> to select all items and add them to the quickfix list
        ["ctrl-q"] = "select-all+accept",
      },
    },
  },
  keys = {
    {
      "<leader>fb",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").files { cwd = vim.fn.stdpath "config" }
      end,
      desc = "Find file in neovim config",
    },
    {
      "<leader>fC",
      function()
        require("fzf-lua").files {
          cwd = "~/.config", -- or wherever your projects are
          fd_opts = "--type d --hidden --exclude .git",
        }
      end,
    },
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "Find files in project directory",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").command_history()
      end,
      desc = "Find in command history",
    },
    {
      "<leader>fl",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Live grep files in project directory",
    },
    {
      "<leader>fp",
      function()
        require("fzf-lua").files { cwd = "~/code/projects" }
      end,
      desc = "Find files in ~/projects directory",
    },
    {
      "<leader>fP",
      function()
        require("fzf-lua").files {
          cwd = "~/code/projects", -- or wherever your projects are
          fd_opts = "--type d --hidden --exclude .git",
        }
      end,
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").registers()
      end,
      desc = "Find in registers",
    },
  },
}
