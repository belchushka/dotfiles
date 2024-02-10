require('utils.notify_module_load_fail')

local is_ok, module = pcall(require, 'bufferline')

if not is_ok then
  notify_module_load_fail("bufferline")
  return
end

module.setup {
  options = {
    numbers = "none",
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator = {
      style = "icon",
      icon = "▎"
    },
    modified_icon = "●",
    left_trunc_marker = "󰬨",
    right_trunc_marker = "󰬪",
    max_name_length = 30,
    max_prefix_length = 30,
    tab_size = 21,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  },
  highlights = {
    indicator_selected = {
      fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
      bg = { attribute = "bg", highlight = "Normal" },
    },
  },
}
