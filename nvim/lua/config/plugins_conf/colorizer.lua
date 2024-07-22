local is_ok, module = pcall(require, 'colorizer')

if not is_ok then
  vim.utils.notify_module_load_fail("colorizer")
  return
end

module.setup()

