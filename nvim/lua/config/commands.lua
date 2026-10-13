vim.api.nvim_create_user_command("Bclose", function()
  vim.fn.Preserve(function()
    vim.cmd("BufferLineCloseOthers")
  end)
end, {})


local claude_terminal = require("toggleterm.terminal").Terminal:new({
  cmd = "claude",
  direction = "vertical",
  hidden = true,
})

vim.api.nvim_create_user_command("Code", function()
  claude_terminal:toggle(60)

  if not claude_terminal.hidden then
    vim.cmd('startinsert')
  else
    vim.cmd('stopinsert')
  end
end, {})

local function transform_visual(transformer, args)
  if args.range <= 0 then
    print("Visual mode only")
    return
  end

  local start_pos = vim.fn.getpos("'<")
  local end_pos   = vim.fn.getpos("'>")

  local start_row = start_pos[2]
  local start_col = start_pos[3]
  local end_row   = end_pos[2]
  local end_col   = end_pos[3]

  if end_col >= 2147483647 then
    local last_line = vim.api.nvim_buf_get_lines(0, end_row - 1, end_row, false)[1]
    end_col = #last_line
  end

  local lines = vim.api.nvim_buf_get_lines(0, start_row - 1, end_row, false)

  if #lines == 1 then
    lines[1] = lines[1]:sub(start_col, end_col)
  else
    lines[1] = lines[1]:sub(start_col)
    lines[#lines] = lines[#lines]:sub(1, end_col)
  end

  local text = table.concat(lines, "\n")

  local result = transformer(text)

  local new_lines = vim.split(result, "\n", { plain = true })
  vim.api.nvim_buf_set_text(0, start_row - 1, start_col - 1, end_row - 1, end_col, new_lines)
end

local function snake_to_camel(str)
  return str:gsub("(_[a-zA-Z])", function(m)
    return m:sub(2):upper()
  end)
end

local function camel_to_snake(str)
  return str
      :gsub("(%l)(%u)", "%1_%2")
      :lower()
end

vim.api.nvim_create_user_command("Camelize", function(args)
  transform_visual(snake_to_camel, args)
end, { range = true })

vim.api.nvim_create_user_command("ToSnake", function(args)
  transform_visual(camel_to_snake, args)
end, { range = true })
