local is_ok, module = pcall(require, 'harpoon')

if not is_ok then
  vim.utils.notify_module_load_fail("harpoon")
  return
end

module.setup()
