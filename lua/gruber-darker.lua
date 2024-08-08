local M = {}
local config = require("gruber-darker.config")

local function set_highlights()
  local c = require("gruber-darker.palette")
  local styles = config.options.styles;
  local highlights = {
    ColorColumn = { bg = c.bg1 },
    LineNr = { fg = c.bg4 },
    Conceal = { bg = c.bg, fg = c.fg },
    Normal = { bg = c.bg, fg = c.fg },

    Cursor = { bg = c.yellow },
    CursorColumn = { bg = c.bg2 },
    CursorLine = { bg = c.bg1 },
    TermCursor = { bg = c.yellow },
    CursorIM = { bg = c.yellow, fg = c.none },
    lCursor = { bg = c.yellow, fg = c.none },
    CursorLineNr = { fg = c.yellow, bold = styles.bold },

    Constant = { fg = c.quartz },
    Delimiter = { fg = c.fg },
    Directory = { fg = c.niagara },
    Function = { fg = c.niagara },
    Identifier = { fg = c.niagara },
    Special = { fg = c.yellow },
    SpecialChar = { fg = c.yellow },
    String = { fg = c.green },
    Type = { fg = c.quartz },
    Comment = { fg = c.brown, italic = styles.italic },
    Keyword = { fg = c.yellow, bold = styles.bold },
    Typedef = { fg = c.yellow, bold = styles.bold },

    IlluminatedWordRead = { bg = c.bg2, fg = c.fg },
    IlluminatedWordText = { bg = c.bg2, fg = c.fg },
    IlluminatedWordWrite = { bg = c.bg2, fg = c.fg },

    IndentBlanklineChar = { fg = c.bg2 },
    IndentBlanklineSpaceChar = { fg = c.bg2 },
    IndentBlanklineSpaceCharBlankline = { fg = c.bg2 },
    IndentBlanklineContextChar = { fg = c.bg4 },
    IndentBlanklineContextSpaceChar = { fg = c.bg4 },

    DiagnosticError = { fg = c.red, bold = styles.bold },
    DiagnosticSignError = { fg = c.red, reverse = styles.reverse },
    DiagnosticUnderlineError = { fg = c.red, undercurl = styles.undercurl },
    DiagnosticWarn = { fg = c.yellow, bold = styles.bold },
    DiagnosticSignWarn = { fg = c.yellow, bold = styles.bold, reverse = styles.reverse },
    DiagnosticUnderlineWarn = { fg = c.yellow, bold = styles.bold, undercurl = styles.undercurl },
    DiagnosticInfo = { fg = c.green, bold = styles.bold },
    DiagnosticSignInfo = { fg = c.green, bold = styles.bold, reverse = styles.reverse },
    DiagnosticUnderlineInfo = { fg = c.green, bold = styles.bold, undercurl = styles.undercurl },
    DiagnosticHint = { fg = c.wisteria, bold = styles.bold },
    DiagnosticSignHint = { fg = c.wisteria, bold = styles.bold, reverse = styles.reverse },
    DiagnosticUnderlineHint = { fg = c.wisteria, bold = styles.bold, undercurl = styles.undercurl },
    DiagnosticUnnecessary = { link = "DiagnosticUnderlineHint"},

    ["@constructor"] = { link = "Function" },
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

---@param params Options | nil
function M.setup(params)
  config.extend(params)
end

return M
