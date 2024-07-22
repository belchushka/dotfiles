require('utils.notify_module_load_fail')

local is_ok, module = pcall(require, 'blame')

if not is_ok then
  notify_module_load_fail("blame")
  return
end

module.setup()
