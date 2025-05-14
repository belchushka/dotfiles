local is_ok, module = pcall(require, 'smear_cursor')

if not is_ok then
  vim.utils.notify_module_load_fail("smear_cursor")
  return
end

module.setup({
  stiffness = 0.8,
  trailling_stiffness = 0.5,
  distance_stop_animation = 0.5,
})

