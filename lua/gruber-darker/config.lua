local config = {}

---@class gruber_darker.Options
config.options = {
  styles = {
    bold = true,
    italic = true,
    reverse = false,
    undercurl = true,
    underline = true
  }
}

---@param params gruber_darker.Options | nil
function config.extend(params)
  config.options = vim.tbl_deep_extend('force', config.options, params or {})
end

return config
