require 'config.colorscheme.cyberdream'
require 'config.colorscheme.kanagawa'

local colors = require 'config.colorscheme.colors'

local dark_theme = "nordic"
local light_theme = "nightfly"

local theme = vim.utils.get_sys_theme()

local current_scheme = dark_theme

if theme == "light" then
  current_scheme = light_theme
end

vim.cmd("colorscheme "..current_scheme)

colors.setup()
