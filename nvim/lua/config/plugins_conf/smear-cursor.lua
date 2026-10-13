local is_ok, module = pcall(require, 'smear_cursor')

if not is_ok then
  vim.utils.notify_module_load_fail("smear_cursor")
  return
end

module.setup({
})
