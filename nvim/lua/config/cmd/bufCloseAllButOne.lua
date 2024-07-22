vim.api.nvim_create_user_command('BufCloseAllButOne',function()
  vim.fn.Preserve(function()
    vim.cmd [[%bd|e#]]
  end)
end,{})
