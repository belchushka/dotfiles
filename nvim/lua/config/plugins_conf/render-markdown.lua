local is_ok, module = pcall(require, 'render-markdown')

if not is_ok then
  vim.utils.notify_module_load_fail("render-markdown")
  return
end

module.setup({
  file_types = { "markdown", "Avante" },
})
