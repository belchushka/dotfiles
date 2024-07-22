vim.api.nvim_create_user_command('BufCloseAll',function()
  vim.fn.Preserve(function ()
    vim.cmd [[%bd]]
  end)
end,{})

