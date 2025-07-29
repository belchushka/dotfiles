local M = {}

local startup_palette = { "#390099", "#9e0059", "#ff0054", "#ff5400", "#ffbd00" }
local russian_palette = {
  "#FFFFFF", "#0036A7", "#D62718", "#FFFFFF", "#0036A7", "#D62718"
}

function M.setup()
  local start_palette = math.random(1, 2) == 1 and startup_palette or russian_palette

  for i, color in ipairs(start_palette) do
    vim.cmd(string.format("highlight StartLogo%d guifg=%s", i, color))
  end

  for i, color in ipairs(start_palette) do
    vim.cmd(string.format("highlight StartLogoPop%d guifg=%s", i, color))
  end
end

return M
