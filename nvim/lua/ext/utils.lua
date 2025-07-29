local M = {}

---@param name string?
function M.notify_module_load_fail(name)
  vim.notify("Failed to load module: " .. name)
end

function M.exec_command(cmd)
  local handle = io.popen(cmd)

  if not handle then
    return nil
  end

  local result = handle:read("*a")
  handle:close()
  return result
end

function M.get_sys_theme()
  if vim.os.is_mac() then
    local cmd = 'defaults read -g AppleInterfaceStyle'
    local theme = M.exec_command(cmd)
    if theme == "Dark\n" then
      return "dark"
    else
      return "light"
    end
  end

  return "dark"
end

vim.utils = M
