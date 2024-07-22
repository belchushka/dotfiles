vim.fn.Preserve = function(func)
  local view = vim.fn.winsaveview()
  vim.api.nvim_exec('keepjumps keeppatterns silent! undojoin', false)
  func()
  vim.fn.winrestview(view)
end
