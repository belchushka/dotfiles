require('utils.notify_module_load_fail')

local theme = "nightfly"

-- local is_ok, _ = pcall(require, theme)
--
-- if not is_ok then
--   notify_module_load_fail(theme)
--   return
-- end

vim.cmd("colorscheme "..theme)
