local M = {}

---@param name string?
function M.notify_module_fail(name)
    vim.notify("Failed to load module: " .. name)
end

vim.utils = M
