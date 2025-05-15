local alpha = require'alpha'
local local_ascii = require'config.plugins_conf.startup.ascii'

local is_ok, ascii = pcall(require, "ascii")

local headers = {}

local function lineColor(lines, popStart, popEnd)
  local out = {}
  for i, line in ipairs(lines) do
    local hi
    if i % 2 == 0 and i > popStart and i <= popEnd then
      hi = "StartLogoPop" .. ((i - popStart) % 5 + 1)
    elseif i > popStart then
      hi = "StartLogo" .. ((i - popStart) % 5 + 1)
    else
      hi = "StartLogo" .. (i % 5 + 1)
    end
    table.insert(out, { hi = hi, line = line})
  end
  return out
end


if not is_ok then
 headers = {
  lineColor(local_ascii.coolLines, 6, 12),
  lineColor(local_ascii.solveLines, 0, 0),
  lineColor(local_ascii.humourLines, 6, 9),
  lineColor(local_ascii.bugLines, 5, 10),
  lineColor(local_ascii.processLines, 0, 3),
  lineColor(local_ascii.fixLines, 0, 0),
}
else
  headers = {
    lineColor(ascii.art.text.neovim.sharp, 1, 5),
    lineColor(ascii.art.text.doom.DooM, 3, 5)
  }
end

local function header_chars()
  math.randomseed(os.time())
  return headers[math.random(#headers)]
end

local function header_color()
  local lines = {}
  for _, lineConfig in pairs(header_chars()) do
    local hi = lineConfig.hi
    local line_chars = lineConfig.line
    local line = {
      type = "text",
      val = line_chars,
      opts = {
        hl = hi,
        shrink_margin = false,
        position = "center",
      },
    }
    table.insert(lines, line)
  end

  local output = {
    type = "group",
    val = lines,
    opts = { position = "center", },
  }

  return output
end

local function configure()
  local theme = require("alpha.themes.theta")
  local themeconfig = theme.config
  local buttons = {
    type = "group",
    val = {
    },
    position = "center",
  }

  themeconfig.layout[2] = header_color()
  themeconfig.layout[6] = buttons

  return themeconfig
end

alpha.setup(configure())
