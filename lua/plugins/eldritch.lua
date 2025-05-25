-- https://github.com/eldritch-theme/eldritch.nvim
--
-- Filename: ~/dotfiles/nvim/lua/plugins/colorschemes/eldritch.lua
-- ~/dotfiles/nvim/lua/plugins/colorschemes/eldritch.lua

local palette = require "config.palette-eldritch"

return {
  "eldritch-theme/eldritch.nvim",
  lazy = true,
  name = "eldritch",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    -- Overriding colors globally using a definitions table
    on_colors = function(global_colors)
      -- Define all color overrides in a single table
      local color_definitions = {
        -- https://github.com/eldritch-theme/eldritch.nvim/blob/master/lua/eldritch/colors.lua
        bg = palette.custom.color10,
        fg = palette.custom.color14,
        selection = palette.custom.color16,
        comment = palette.custom.color09,
        red = palette.custom.color08, -- default #f16c75
        orange = palette.custom.color06, -- default #f7c67f
        yellow = palette.custom.color05, -- default #f1fc79
        green = palette.custom.color02,
        purple = palette.custom.color04, -- default #a48cf2
        cyan = palette.custom.color03,
        pink = palette.custom.color01, -- default #f265b5
        bright_red = palette.custom.color08,
        bright_green = palette.custom.color02,
        bright_yellow = palette.custom.color05,
        bright_blue = palette.custom.color04,
        bright_magenta = palette.custom.color01,
        bright_cyan = palette.custom.color03,
        bright_white = palette.custom.color14,
        menu = palette.custom.color10,
        visual = palette.custom.color16,
        gutter_fg = palette.custom.color16,
        nontext = palette.custom.color16,
        white = palette.custom.color14,
        black = palette.custom.color10,
        git = {
          change = palette.custom.color03,
          add = palette.custom.color02,
          delete = palette.custom.color11,
        },
        gitSigns = {
          change = palette.custom.color03,
          add = palette.custom.color02,
          delete = palette.custom.color11,
        },
        bg_dark = palette.custom.color13,
        -- Lualine line across
        bg_highlight = palette.custom.color17,
        terminal_black = palette.custom.color13,
        fg_dark = palette.custom.color14,
        fg_gutter = palette.custom.color13,
        dark3 = palette.custom.color13,
        dark5 = palette.custom.color13,
        bg_visual = palette.custom.color16,
        dark_cyan = palette.custom.color03,
        magenta = palette.custom.color01,
        magenta2 = palette.custom.color01,
        magenta3 = palette.custom.color01,
        dark_yellow = palette.custom.color05,
        dark_green = palette.custom.color02,
      }

      -- Apply each color definition to global_colors
      for key, value in pairs(color_definitions) do
        global_colors[key] = value
      end
    end,

    -- This function is found in the documentation
    on_highlights = function(highlights)
      local highlight_definitions = {
        FlashBackdrop = { fg = palette.custom.color09 },
        LspInlayHint = { bg = palette.custom.color25, fg = palette.custom.color09 },
        -- LspInlayHint   xxx guifg=#314154 guibg=#1e344a
        -- nvim-spectre or grug-far.nvim highlight colors
        DiffChange = { bg = palette.custom.color03, fg = "black" },
        DiffDelete = { bg = palette.custom.color11, fg = "black" },
        DiffAdd = { bg = palette.custom.color02, fg = "black" },
        TelescopeResultsDiffDelete = { bg = palette.custom.color01, fg = "black" },

        -- horizontal line that goes across where cursor is
        CursorLine = { bg = palette.custom.color13 },

        -- Set cursor color, these will be called by the "guicursor" option in
        -- the options.lua file, which will be used by neovide
        Cursor = { bg = palette.custom.color24 },
        lCursor = { bg = palette.custom.color24 },
        CursorIM = { bg = palette.custom.color24 },

        -- I do the line below to change the color of bold text
        ["@markup.strong"] = { fg = palette.custom.color24, bold = true },

        -- Inline code in markdown
        ["@markup.raw.markdown_inline"] = { fg = palette.custom.color02 },
        -- Background color of markdown folds
        -- Folded = { bg = palette.custom.color04 },
        -- Set this to NONE when handling transparency in the terminal and not
        -- through yabai
        Folded = { bg = "NONE" },

        -- Change the spell underline color
        SpellBad = { sp = palette.custom.color11, undercurl = true, bold = true, italic = true },
        SpellCap = { sp = palette.custom.color12, undercurl = true, bold = true, italic = true },
        SpellLocal = { sp = palette.custom.color12, undercurl = true, bold = true, italic = true },
        SpellRare = { sp = palette.custom.color04, undercurl = true, bold = true, italic = true },

        MiniDiffSignAdd = { fg = palette.custom.color05, bold = true },
        MiniDiffSignChange = { fg = palette.custom.color02, bold = true },

        -- Codeblocks for the render-markdown plugin
        RenderMarkdownCode = { bg = palette.custom.color07 },

        -- This is the plugin that shows you where you are at the top
        TreesitterContext = { sp = palette.custom.color10 },
        MiniFilesNormal = { sp = palette.custom.color10 },
        MiniFilesBorder = { sp = palette.custom.color10 },
        MiniFilesTitle = { sp = palette.custom.color10 },
        MiniFilesTitleFocused = { sp = palette.custom.color10 },

        NormalFloat = { bg = palette.custom.color10 },
        FloatBorder = { bg = palette.custom.color10 },
        FloatTitle = { bg = palette.custom.color10 },
        NotifyBackground = { bg = palette.custom.color10 },
        NeoTreeNormalNC = { bg = palette.custom.color10 },
        NeoTreeNormal = { bg = palette.custom.color10 },
        NvimTreeWinSeparator = { fg = palette.custom.color10, bg = palette.custom.color10 },
        NvimTreeNormalNC = { bg = palette.custom.color10 },
        NvimTreeNormal = { bg = palette.custom.color10 },
        TroubleNormal = { bg = palette.custom.color10 },

        NoiceCmdlinePopupBorder = { fg = palette.custom.color10 },
        NoiceCmdlinePopupTitle = { fg = palette.custom.color10 },
        NoiceCmdlinePopupBorderFilter = { fg = palette.custom.color10 },
        NoiceCmdlineIconFilter = { fg = palette.custom.color10 },
        NoiceCmdlinePopupTitleFilter = { fg = palette.custom.color10 },
        NoiceCmdlineIcon = { fg = palette.custom.color10 },
        NoiceCmdlineIconCmdline = { fg = palette.custom.color03 },
        NoiceCmdlinePopupBorderCmdline = { fg = palette.custom.color02 },
        NoiceCmdlinePopupTitleCmdline = { fg = palette.custom.color03 },
        NoiceCmdlineIconSearch = { fg = palette.custom.color04 },
        NoiceCmdlinePopupBorderSearch = { fg = palette.custom.color03 },
        NoiceCmdlinePopupTitleSearch = { fg = palette.custom.color04 },
        NoiceCmdlineIconLua = { fg = palette.custom.color05 },
        NoiceCmdlinePopupBorderLua = { fg = palette.custom.color01 },
        NoiceCmdlinePopupTitleLua = { fg = palette.custom.color05 },
        NoiceCmdlineIconHelp = { fg = palette.custom.color12 },
        NoiceCmdlinePopupBorderHelp = { fg = palette.custom.color08 },
        NoiceCmdlinePopupTitleHelp = { fg = palette.custom.color12 },
        NoiceCmdlineIconInput = { fg = palette.custom.color10 },
        NoiceCmdlinePopupBorderInput = { fg = palette.custom.color10 },
        NoiceCmdlinePopupTitleInput = { fg = palette.custom.color10 },
        NoiceCmdlineIconCalculator = { fg = palette.custom.color10 },
        NoiceCmdlinePopupBorderCalculator = { fg = palette.custom.color10 },
        NoiceCmdlinePopupTitleCalculator = { fg = palette.custom.color10 },
        NoiceCompletionItemKindDefault = { fg = palette.custom.color10 },

        NoiceMini = { bg = palette.custom.color10 },
        -- Winbar is liked to the StatusLine color, so to set winbar
        -- transparent, I set the bg to NONE
        StatusLine = { bg = "NONE" },
        -- StatusLine = { bg = palette.custom.color10 },

        DiagnosticInfo = { fg = palette.custom.color03 },
        DiagnosticHint = { fg = palette.custom.color02 },
        DiagnosticWarn = { fg = palette.custom.color12 },
        DiagnosticOk = { fg = palette.custom.color04 },
        DiagnosticError = { fg = palette.custom.color11 },
        RenderMarkdownQuote = { fg = palette.custom.color12 },

        -- visual mode selection
        Visual = { bg = palette.custom.color16, fg = palette.custom.color10 },
        PreProc = { fg = palette.custom.color06 },
        ["@operator"] = { fg = palette.custom.color02 },

        KubectlHeader = { fg = palette.custom.color04 },
        KubectlWarning = { fg = palette.custom.color03 },
        KubectlError = { fg = palette.custom.color01 },
        KubectlInfo = { fg = palette.custom.color02 },
        KubectlDebug = { fg = palette.custom.color05 },
        KubectlSuccess = { fg = palette.custom.color02 },
        KubectlPending = { fg = palette.custom.color03 },
        KubectlDeprecated = { fg = palette.custom.color08 },
        KubectlExperimental = { fg = palette.custom.color09 },
        KubectlNote = { fg = palette.custom.color03 },
        KubectlGray = { fg = palette.custom.color10 },

        -- Colorcolumn that helps me with markdown guidelines
        ColorColumn = { bg = palette.custom.color13 },

        FzfLuaFzfPrompt = { fg = palette.custom.color04, bg = palette.custom.color10 },
        FzfLuaCursorLine = { fg = palette.custom.color02, bg = palette.custom.color10 },
        FzfLuaTitle = { fg = palette.custom.color03, bg = palette.custom.color10 },
        FzfLuaSearch = { fg = palette.custom.color14, bg = palette.custom.color10 },
        FzfLuaBorder = { fg = palette.custom.color02, bg = palette.custom.color10 },
        FzfLuaNormal = { fg = palette.custom.color14, bg = palette.custom.color10 },

        TelescopeNormal = { fg = palette.custom.color14, bg = palette.custom.color10 },
        TelescopeMultiSelection = { fg = palette.custom.color02, bg = palette.custom.color10 },
        TelescopeSelection = { fg = palette.custom.color14, bg = palette.custom.color13 },
      }

      -- Apply all highlight definitions at once
      for group, props in pairs(highlight_definitions) do
        highlights[group] = props
      end
    end,
  },
}
