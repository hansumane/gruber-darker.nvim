local config = require('gruber-darker.config')
local c = require('gruber-darker.palette')
local styles = config.options.styles

return {
  normal = {
    a = { bg = c.bg2, fg = c.fg2, bold = styles.bold },
    b = { bg = c.bg1, fg = c.fg1 },
    c = { bg = c.bg, fg = c.fg },
    x = { bg = c.bg, fg = c.fg },
    y = { bg = c.bg1, fg = c.fg1 },
    z = { bg = c.bg2, fg = c.fg2 }
  }
}
