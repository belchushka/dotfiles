local is_ok, module = pcall(require, 'img-clip')

if not is_ok then
  vim.utils.notify_module_load_fail("img-clip")
  return
end

module.setup({
  default = {
    embed_image_as_base64 = false,
    prompt_for_file_name = false,
    drag_and_drop = {
      insert_mode = true,
    },
    -- required for Windows users
    use_absolute_path = true,
  },
})

