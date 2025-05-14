local M = {}

function M.mason_paths()
  return vim.fn.stdpath("data") .. "/mason/bin"
end

function M.python_venv_paths()
  return {
    "venv/bin",
    ".venv/bin",
    "env/bin",
  }
end

function M.node_modules_paths()
  return {
    "node_modules/.bin",
  }
end

-- @param command: The command name (e.g., "mypy", "black")
-- @param respects: Optional, either "venv" or "node_modules"
function M.find_executable(command, respects)
  local search_paths = {}

  if respects == "venv" then
    search_paths = M.python_venv_paths()
  elseif respects == "node_modules" then
    search_paths = M.node_modules_paths()
  end

  for _, path in ipairs(search_paths) do
    local full_path = vim.fn.getcwd() .. "/" .. path .. "/" .. command
    if vim.fn.executable(full_path) == 1 then
      return full_path
    end
  end

  local mason_full_path = M.mason_paths() .. "/" .. command
  if vim.fn.executable(mason_full_path) == 1 then
    return mason_full_path
  end

  return command
end

return M
