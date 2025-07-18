Installing
-
[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
-- lua/plugins/gruber-darker.lua
return {
  'hansumane/gruber-darker.nvim',
  config = function()
    require('gruber-darker').setup()
    vim.opt.background = 'dark'
    vim.cmd.colorscheme('gruber-darker')
  end
}
```

[mini.deps](https://github.com/echasnovski/mini.deps)
```lua
MiniDeps.add { source = 'hansumane/gruber-darker.nvim' }
require('gruber-darker').setup()
vim.o.background = 'dark'
vim.cmd.colorscheme('gruber-darker')
```

Configuring
-
```lua
---@class gruber_darker.Options
local opts = {
  styles = {
    bold = true,
    italic = true,
    reverse = false,
    undercurl = true,
    underline = true
  }
}
require('gruber-darker').setup(opts)
```

Supported Plugins
-
+ [lualine](https://github.com/nvim-lualine/lualine.nvim.git)
+ [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua.git)
+ [mini.indentscope](https://github.com/echasnovski/mini.indentscope.git)
+ [mini.tabline](https://github.com/echasnovski/mini.tabline.git)
+ [mini.statusline](https://github.com/echasnovski/mini.statusline.git)
+ [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim.git)

Credits
-
+ [rexim/gruber-darker-theme](https://github.com/rexim/gruber-darker-theme.git)
  for the colorscheme
+ [rose-pine/neovim](https://github.com/rose-pine/neovim.git)
  for providing an example how to do the thing
