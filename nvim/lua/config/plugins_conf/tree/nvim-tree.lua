require('utils.notify_module_load_fail')

local is_ok, module = pcall(require, 'nvim-tree')

if not is_ok then
  notify_module_load_fail("nvim-tree")
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
})
