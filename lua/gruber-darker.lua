local M = {}
local config = require('gruber-darker.config')
local c = require('gruber-darker.palette')
local styles = config.options.styles

local function set_highlights()
  local highlights = {
    ColorColumn = { bg = c.bg1 },
    LineNr = { fg = c.bg4 },
    Visual = { bg = c.niagara_2 },
    Conceal = { bg = c.bg, fg = c.fg },
    Normal = { bg = c.bg, fg = c.fg },
    Search = { bg = c.niagara, fg = c.bg1 },

    Cursor = { bg = c.yellow },
    lCursor = { bg = c.yellow },
    TermCursor = { bg = c.yellow },
    CursorColumn = { bg = c.bg2 },
    CursorLine = { bg = c.bg1 },
    CursorLineNr = { fg = c.yellow, bold = styles.bold },
    CurSearch = { link = 'Search' },
    IncSearch = { link = 'Search' },

    Constant = { fg = c.quartz },
    Delimiter = { fg = c.fg },
    Directory = { fg = c.niagara },
    Function = { fg = c.niagara },
    Identifier = { fg = c.niagara },
    Special = { fg = c.yellow },
    SpecialChar = { fg = c.yellow },
    String = { fg = c.green },
    Title = { fg = c.niagara },
    Type = { fg = c.quartz },
    Comment = { fg = c.brown, italic = styles.italic },
    Keyword = { fg = c.yellow, bold = styles.bold },
    Todo = { fg = c.quartz, bold = styles.bold },
    Typedef = { fg = c.yellow, bold = styles.bold },

    IlluminatedWordRead = { bg = c.bg2, fg = c.fg1 },
    IlluminatedWordText = { bg = c.bg2, fg = c.fg1 },
    IlluminatedWordWrite = { bg = c.bg2, fg = c.fg1 },

    -- mini.indentscope
    MiniIndentscopeSymbol = { fg = c.bg4 },
    -- mini.tabline
    MiniTablineCurrent = { fg = c.yellow, bg = c.bg1, bold = styles.bold },
    MiniTablineVisible = { fg = c.fg, bg = c.bg2,  bold = styles.bold },
    MiniTablineHidden = { fg = c.fg, bg = c.bg2 },
    MiniTablineModifiedCurrent = { fg = c.bg, bg = c.yellow, bold = styles.bold },
    MiniTablineModifiedVisible = { fg = c.bg, bg = c.fg, bold = styles.bold },
    MiniTablineModifiedHidden = { fg = c.bg, bg = c.fg },
    -- mini.statusline
    MiniStatuslineDevinfo = { bg = c.bg1, fg = c.fg1 },
    MiniStatuslineFilename = { bg = c.bg, fg = c.fg },
    MiniStatuslineFileinfo = { bg = c.bg1, fg = c.fg1 },
    MiniStatuslineModeCommand = { bg = c.bg2, fg = c.fg2, bold = styles.bold },
    MiniStatuslineModeInsert = { bg = c.bg2, fg = c.fg2, bold = styles.bold },
    MiniStatuslineModeNormal = { bg = c.bg2, fg = c.fg2, bold = styles.bold },
    MiniStatuslineModeReplace = { bg = c.bg2, fg = c.fg2, bold = styles.bold },
    MiniStatuslineModeVisual = { bg = c.bg2, fg = c.fg2, bold = styles.bold },
    MiniStatuslineModeOther = { bg = c.bg2, fg = c.fg2 },
    MiniStatuslineInactive = { bg = c.bg1, fg = c.fg },
    -- indent-blankline (ibl) v3
    IblIndent = { fg = c.bg2 },
    IblWhitespace = { fg = c.bg2 },
    IblScope = { fg = c.bg4 },
    -- indent-blankline v2
    IndentBlanklineChar = { fg = c.bg2 },
    IndentBlanklineSpaceChar = { fg = c.bg2 },
    IndentBlanklineSpaceCharBlankline = { fg = c.bg2 },
    IndentBlanklineContextChar = { fg = c.bg4 },
    IndentBlanklineContextSpaceChar = { fg = c.bg4 },

    NvimTreeExecFile = { fg = c.green },
    NvimTreeSpecialFile = { fg = c.wisteria, underline = styles.underline },
    NvimTreeSymlink = { fg = c.quartz, italic = styles.italic },
    NvimTreeImageFile = { link = 'Title'  },

    Added = { fg = c.green },
    DiffAdd = { link = 'Added' },
    diffAdded = { link = 'Added' },
    Changed = { fg = c.yellow },
    DiffChange = { link = 'Changed' },
    DiffText = { link = 'Changed' },
    diffLine = { link = 'Changed' },
    Removed = { fg = c.red1 },
    DiffDelete = { link = 'Removed' },
    diffRemoved = { link = 'Removed' },

    DiagnosticOk = { fg = c.green, bold = styles.bold },
    DiagnosticSignOk = { fg = c.green, reverse = styles.reverse },
    DiagnosticUnderlineOk = { fg = c.green, undercurl = styles.undercurl },
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
    DiagnosticUnnecessary = { link = 'DiagnosticUnderlineHint'},

    ['@comment'] = { link = 'Comment' },
    ['@constructor'] = { link = 'Function' },

    ['@lsp.type.comment'] = {},
    ['@lsp.type.comment.c'] = { link = '@comment' },
    ['@lsp.type.comment.cpp'] = { link = '@comment' },

    ['@text.diff.add'] = { link = 'Added' },
    ['@text.diff.change'] = { link = 'Changed' },
    ['@text.diff.delete'] = { link = 'Removed' },

    ['@comment.error'] = { link = 'DiagnosticError' },
    ['@comment.warning'] = { link = 'DiagnosticWarn' },
    ['@comment.hint'] = { link = 'DiagnosticHint' },
    ['@comment.note'] = { link = 'DiagnosticInfo' },
    ['@comment.todo'] = { link = 'Todo' },

    ['@text.todo'] = { link = '@comment.todo' },
    ['@text.note'] = { link = '@comment.note' },
    ['@text.warning'] = { link = '@comment.warning' },
    ['@text.danger'] = { link = '@comment.error' },
  }

  for group, highlight in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, highlight)
  end
end

local function set_terminal_colors()
  -- black (bg/bg+1)
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_8 = c.bg2
  -- red (red+1)
  vim.g.terminal_color_1 = c.red1
  vim.g.terminal_color_9 = c.red1
  -- green (green)
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_10 = c.green
  -- yellow (yellow)
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_11 = c.yellow
  -- blue (niagara)
  vim.g.terminal_color_4 = c.niagara
  vim.g.terminal_color_12 = c.niagara
  -- magenta (wisteria)
  vim.g.terminal_color_5 = c.wisteria
  vim.g.terminal_color_13 = c.wisteria
  -- cyan (quartz)
  vim.g.terminal_color_6 = c.quartz
  vim.g.terminal_color_14 = c.quartz
  -- white (fg/fg+1)
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_15 = c.fg2
end

function M.colorscheme()
  vim.opt.termguicolors = true
  if vim.g.colors_name then
    vim.cmd('hi clear')
    vim.cmd('syntax reset')
  end
  vim.g.colors_name = 'gruber-darker'

  set_highlights()
  set_terminal_colors()
end

---@param params gruber_darker.Options | nil
function M.setup(params)
  config.extend(params)
end

return M
