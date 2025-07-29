local is_ok, module = pcall(require, 'mcphub')

if not is_ok then
  vim.utils.notify_module_load_fail("mcphub")
  return
end

module.setup {}
