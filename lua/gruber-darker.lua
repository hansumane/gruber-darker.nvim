local M = {}
local config = require("gruber-darker.config")
local c = require("gruber-darker.palette")
local styles = config.options.styles;

local function set_highlights()
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
    Todo = { fg = c.quartz, bold = styles.bold },
    Typedef = { fg = c.yellow, bold = styles.bold },

    IlluminatedWordRead = { bg = c.bg2, fg = c.fg },
    IlluminatedWordText = { bg = c.bg2, fg = c.fg },
    IlluminatedWordWrite = { bg = c.bg2, fg = c.fg },

    IndentBlanklineChar = { fg = c.bg2 },
    IndentBlanklineSpaceChar = { fg = c.bg2 },
    IndentBlanklineSpaceCharBlankline = { fg = c.bg2 },
    IndentBlanklineContextChar = { fg = c.bg4 },
    IndentBlanklineContextSpaceChar = { fg = c.bg4 },

    DiffAdd = { fg = c.green },
    diffAdded = { link = "DiffAdd" },
    ["@text.diff.add"] = { link = "DiffAdd" },
    DiffChange = { fg = c.yellow },
    DiffText = { link = "DiffChange" },
    diffLine = { link = "DiffChange" },
    ["@text.diff.change"] = { link = "DiffChange" },
    DiffDelete = { fg = c.red1 },
    diffRemoved = { link = "DiffDelete" },
    ["@text.diff.delete"] = { link = "DiffDelete" },

    DiagnosticError = { fg = c.red1, bold = styles.bold },
    DiagnosticSignError = { fg = c.red1, reverse = styles.reverse },
    DiagnosticUnderlineError = { fg = c.red1, undercurl = styles.undercurl },
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

    ["@comment"] = { link = "Comment" },
    ["@comment.error"] = { link = "DiagnosticError" },
    ["@comment.warning"] = { link = "DiagnosticWarn" },
    ["@comment.hint"] = { link = "DiagnosticHint" },
    ["@comment.note"] = { link = "DiagnosticInfo" },
    ["@comment.todo"] = { link = "Todo" },

    ["@text.todo"] = { link = "@comment.todo" },
    ["@text.note"] = { link = "@comment.note" },
    ["@text.warning"] = { link = "@comment.warning" },
    ["@text.danger"] = { link = "@comment.error" },
  }

  for group, highlight in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

local function set_terminal_colors()
  -- black (bg/bg+1)
  vim.g.terminal_color_0 = c.bg;
  vim.g.terminal_color_8 = c.bg2;
  -- red (red+1)
  vim.g.terminal_color_1 = c.red1;
  vim.g.terminal_color_9 = c.red1;
  -- green (green)
  vim.g.terminal_color_2 = c.green;
  vim.g.terminal_color_10 = c.green;
  -- yellow (yellow)
  vim.g.terminal_color_3 = c.yellow;
  vim.g.terminal_color_11 = c.yellow;
  -- blue (niagara)
  vim.g.terminal_color_4 = c.niagara;
  vim.g.terminal_color_12 = c.niagara;
  -- magenta (wisteria)
  vim.g.terminal_color_5 = c.wisteria;
  vim.g.terminal_color_13 = c.wisteria;
  -- cyan (quartz)
  vim.g.terminal_color_6 = c.quartz;
  vim.g.terminal_color_14 = c.quartz;
  -- white (fg/fg+1)
  vim.g.terminal_color_7 = c.fg;
  vim.g.terminal_color_15 = c.fg2;
end

function M.colorscheme()
  vim.opt.termguicolors = true
  if vim.g.colors_name then
    vim.cmd("hi clear")
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "gruber-darker"

  set_highlights()
  set_terminal_colors()
end

---@param params Options | nil
function M.setup(params)
  config.extend(params)
end

return M
