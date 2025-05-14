local is_ok, module = pcall(require, 'copilot')

if not is_ok then
  vim.utils.notify_module_load_fail("copilot")
  return
end

module.setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<C-c>",
    },
  },
})
