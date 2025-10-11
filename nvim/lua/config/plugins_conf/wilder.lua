local is_ok, module = pcall(require, 'wilder')

if not is_ok then
  vim.utils.notify_module_load_fail("wilder")
  return
end

module.setup({
  modes = { ':', '/', '?' },
  next_key = '<Tab>',
  previous_key = '<S-Tab>'
})
module.set_option('renderer', module.popupmenu_renderer(
   module.popupmenu_border_theme({
    highlights = {
      border = 'Normal',
    },
    border = 'rounded',
  })
))
