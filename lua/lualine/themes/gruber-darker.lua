local c = require("gruber-darker.palette")

return {
  normal = {
    a = { bg = c.bg1, fg = c.fg, gui = "bold" },
    b = { bg = c.bg1, fg = c.fg },
    c = { bg = c.bg, fg = c.fg },
  },
  insert = {
    a = { bg = c.bg2, fg = c.fg1, gui = "bold" },
    b = { bg = c.bg2, fg = c.fg1 },
    c = { bg = c.bg, fg = c.fg },
  },
  visual = {
    a = { bg = c.yellow, fg = c.bg1, gui = "bold" },
    b = { bg = c.bg2, fg = c.fg1 },
    c = { bg = c.bg, fg = c.fg },
  },
  replace = {
    a = { bg = c.bg2, fg = c.fg1, gui = "bold" },
    b = { bg = c.bg2, fg = c.fg1 },
    c = { bg = c.bg, fg = c.fg },
  },
  command = {
    a = { bg = c.wisteria, fg = c.bg_1, gui = "bold" },
    b = { bg = c.bg2, fg = c.fg1 },
    c = { bg = c.bg, fg = c.fg },
  },
  inactive = {
    a = { bg = c.bg, fg = c.fg, gui = "bold" },
    b = { bg = c.bg, fg = c.fg },
    c = { bg = c.bg, fg = c.fg },
  }
}
