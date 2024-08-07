local M = {}

local function set_highlights()
  local palette = require("gruber-darker.palette")
  local highlights = {
    ColorColumn = { bg = palette.bg1 },
    CursorLine = { bg = palette.bg1 },
    Normal = { bg = palette.bg, fg = palette.fg },

    LineNr = { fg = palette.bg4 },
    CursorLineNr = { fg = palette.yellow, bold = true },

    Delimiter = { fg = palette.fg },
    Function = { fg = palette.niagara },
    Identifier = { fg = palette.niagara },
    String = { fg = palette.green },
    Type = { fg = palette.quartz },
    Typedef = { fg = palette.quartz },
    Keyword = { fg = palette.yellow, bold = true },
    Special = { fg = palette.yellow, bold = true },
    SpecialChar = { fg = palette.yellow, bold = true },

    IndentBlanklineChar = { fg = palette.bg1 },
    IndentBlanklineSpaceChar = { fg = palette.bg1 },
    IndentBlanklineSpaceCharBlankline = { fg = palette.bg1 },
    IndentBlanklineContextChar = { fg = palette.bg2 },
    IndentBlanklineContextSpaceChar = { fg = palette.bg2 },
  }

  for group, highlight in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

function M.colorscheme()
  vim.opt.termguicolors = true
  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "gruber-darker"

  set_highlights()
end

return M
