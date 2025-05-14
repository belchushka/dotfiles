require 'config.colorscheme.cyberdream'
require 'config.colorscheme.kanagawa'

local dark_theme = "nightfly"
local light_theme = "kanagawa-lotus"

local theme = vim.utils.get_sys_theme()

local current_scheme = dark_theme

if theme == "light" then
  current_scheme = light_theme
end

vim.cmd("colorscheme "..current_scheme)
