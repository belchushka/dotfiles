local is_ok, module = pcall(require, 'symbols-outline')

if not is_ok then
  vim.utils.notify_module_load_fail("symbols-outline")
  return
end

module.setup()
