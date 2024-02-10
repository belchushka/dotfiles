require('utils.notify_module_load_fail')

local colors = require('utils.colors')

local theme = "nightfly"

local is_ok, _ = pcall(require, theme)

if not is_ok then
  notify_module_load_fail(theme)
  return
end

vim.cmd("colorscheme "..theme)

local background_shading = -25
local normal_bg = colors.get_color({
  name = "Normal",
  attribute = 'bg'
})

vim.api.nvim_set_hl(0, 'NeoTreeNormal', {bg = colors.shade_color(normal_bg, background_shading)})
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', {bg = colors.shade_color(normal_bg, background_shading)})
