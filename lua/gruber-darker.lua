local M = {}

local function set_highlights()
  local palette = require("gruber-darker.palette")
  local highlights = {
    CursorLineNr = { fg = palette.text, bold = true },
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
