local is_ok, module = pcall(require, 'nvim-treesitter.configs')

if not is_ok then
  vim.utils.notify_module_load_fail("nvim-treesitter")
  return
end

module.setup{
  enable = true,
  max_lines = 0,
  min_window_height = 0,
  line_numbers = true,
  multiline_threshold = 20,
  trim_scope = 'outer',
  mode = 'cursor',
  separator = nil,
  zindex = 20,
  on_attach = nil,
}
