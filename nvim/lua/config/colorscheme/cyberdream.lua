local ok, cyberdream = pcall(require, "cyberdream")

if not ok then
  vim.notify("cyberdream not found", vim.log.levels.ERROR)
  return
end

cyberdream.setup({
  transparent = true,

  italic_comments = true,
  hide_fillchars = true,
  borderless_pickers = true,
  terminal_colors = true,

  cache = true,
})

vim.cmd.colorscheme("cyberdream")
