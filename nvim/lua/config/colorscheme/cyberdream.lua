

local is_ok, module = pcall(require, 'cyberdream')

if not is_ok then
  vim.utils.notify_module_load_fail('cyberdream')
  return
end


module.setup({
  transparent = true,
  italic_comments = true,
  borderless_telescope = true,
  terminal_colors = true,
  theme = {
    variant = "default",
    highlights = {
        Comment = { fg = "#696969", bg = "NONE", italic = true },
    },
    overrides = function(colors)
        return {
            Comment = { fg = colors.green, bg = "NONE", italic = true },
            ["@property"] = { fg = colors.magenta, bold = true },
        }
    end,
    --
    -- colors = {
    --     bg = "#000000",
    --     green = "#00ff00",
    --     magenta = "#ff00ff",
    -- },
  },
})
