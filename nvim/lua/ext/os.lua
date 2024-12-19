
local M = {}

function M.is_mac()
    if jit then
      return jit.os == "OSX"
    else
      local handle = io.popen("uname")
      if handle then
        local result = handle:read("*l")
        handle:close()
        return result == "Darwin"
      end
      return false
    end
end

vim.os = M
