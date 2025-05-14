local is_ok, module = pcall(require, 'avante')

if not is_ok then
  vim.utils.notify_module_load_fail("avante")
  return
end

module.setup({
  provider='copilot',
  mappings = {
    ask = "<C-i>",
    edit = "<C-k>",
  },
})

