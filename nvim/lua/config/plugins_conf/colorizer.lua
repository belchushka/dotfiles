local is_ok, colorizer = pcall(require, 'colorizer');
if not is_ok then
  vim.notify('failed to load colorizer')
  return
end

colorizer.setup()

