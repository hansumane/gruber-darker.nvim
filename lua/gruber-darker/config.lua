local config = {}

---@class Options
config.options = {
  styles = {
    bold = true,
    italic = true,
    reverse = true,
    undercurl = true,
    underline = true
  }
}

---@param params Options | nil
function config.extend(params)
  config.options = vim.tbl_deep_extend("force", config.options, params or {})
end

return config
