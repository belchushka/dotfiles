local is_ok, module = pcall(require, 'modes')

if not is_ok then
  vim.utils.notify_module_load_fail("modes")
  return
end

module.setup({
	colors = {
		copy = "#f5c359",
		delete = "#c75c6a",
		insert = "#78ccc5",
		visual = "#9745be",
	},
	line_opacity = 0.15,
	set_cursor = true,
	set_cursorline = true,
	set_number = true,
	ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
})
