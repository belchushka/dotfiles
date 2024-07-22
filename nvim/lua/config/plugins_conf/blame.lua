local is_ok, module = pcall(require, 'blame')

if not is_ok then
  vim.utils.notify_module_load_fail("blame")
  return
end

module.setup()
