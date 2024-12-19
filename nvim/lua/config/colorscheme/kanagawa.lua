local is_ok, module = pcall(require, 'kanagawa')

if not is_ok then
  vim.utils.notify_module_fail('kanagawa')
  return
end

module.setup({})
