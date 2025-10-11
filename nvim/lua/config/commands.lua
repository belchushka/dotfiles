vim.api.nvim_create_user_command("Bclose", function()
  vim.fn.Preserve(function()
    vim.cmd("BufferLineCloseOthers")
  end)
end, {})


local claude_terminal = require("toggleterm.terminal").Terminal:new({
  cmd = "claude",
  direction = "vertical",
  hidden = true,
})

vim.api.nvim_create_user_command("Code", function()
  claude_terminal:toggle(60)

  if not claude_terminal.hidden then
    vim.cmd('startinsert')
  else
    vim.cmd('stopinsert')
  end
end, {})
