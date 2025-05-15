local M = {}

local startup_palette = { "#390099", "#9e0059", "#ff0054", "#ff5400", "#ffbd00" }

function M.setup()
  for i, color in ipairs(startup_palette) do
    vim.cmd(string.format("highlight StartLogo%d guifg=%s", i, color))
  end

  for i, color in ipairs(startup_palette) do
    vim.cmd(string.format("highlight StartLogoPop%d guifg=%s", i, color))
  end
end

return M
