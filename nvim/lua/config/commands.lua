vim.api.nvim_create_user_command("Bclose", function()
  vim.fn.Preserve(function()
    vim.cmd("BufferLineCloseOthers")
  end)
end, {})