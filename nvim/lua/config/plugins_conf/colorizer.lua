require('utils.notify_module_load_fail')

local is_ok, module = pcall(require, 'colorizer')

if not is_ok then
  notify_module_load_fail("colorizer")
  return
end

module.setup()

