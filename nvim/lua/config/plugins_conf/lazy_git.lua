local is_ok, module = pcall(require, 'lazygit')

if not is_ok then
  vim.utils.notify_module_load_fail("lazygit")
  return
end



