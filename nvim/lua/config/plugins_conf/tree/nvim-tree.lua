local is_ok, module = pcall(require, 'nvim-tree')

if not is_ok then
  vim.utils.notify_module_load_fail("nvim-tree")
  return
end

module.setup({
  filters = {
    dotfiles = false
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  update_focused_file = {
    enable = true,
  }
})
