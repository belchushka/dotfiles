local map = vim.keymap.set

local opts = { noremap = true, silent = true }
local silent = { silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map({ "n", "v" }, "<Space>", "<Nop>", opts)

--------------------------------------------------
-- Normal
--------------------------------------------------

-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Explorer
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- Buffers
map("n", "<S-l>", "<cmd>bnext<CR>", opts)
map("n", "<S-h>", "<cmd>bprevious<CR>", opts)
map("n", "<S-c>", "<cmd>BufferLinePickClose<CR>", opts)

--------------------------------------------------
-- Insert
--------------------------------------------------

map("i", "jk", "<ESC>", opts)

map("i", "<C-h>", "<Left>", opts)
map("i", "<C-l>", "<Right>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)

--------------------------------------------------
-- Visual
--------------------------------------------------

-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move selection
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)

-- Better paste
map("v", "p", '"_dP', opts)

--------------------------------------------------
-- Visual Block
--------------------------------------------------

map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)

map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--------------------------------------------------
-- Terminal
--------------------------------------------------

map("t", "<C-k>", "<C-\\><C-N><C-w>k", silent)
map("t", "<C-l>", "<C-\\><C-N><C-w>l", silent)

--------------------------------------------------
-- Debugger
--------------------------------------------------

map("n", "<C-b>", function()
  require("dap").toggle_breakpoint()
end, opts)

--------------------------------------------------
-- Telescope
--------------------------------------------------

local telescope = require("telescope.builtin")

map("n", "<leader>f", telescope.find_files, opts)
map("n", "<leader>fw", telescope.live_grep, opts)
map("n", "<leader>fr", telescope.resume, opts)

--------------------------------------------------
-- Clipboard
--------------------------------------------------

map({ "n", "v" }, "<leader>y", '"+y', opts)
map("n", "<leader>Y", '"+Y', opts)

--------------------------------------------------
-- LSP
--------------------------------------------------

-- Format
map("n", "<leader>p", function()
  vim.lsp.buf.format({
    timeout_ms = 2000,
  })
end, opts)

-- Code actions
map("n", "<leader>ca", function()
  require("actions-preview").code_actions()
end, opts)

map("n", "<leader>cf", function()
  vim.lsp.buf.code_action({
    context = {
      only = { "source.fixAll" },
      diagnostics = {},
    },
    apply = true,
  })
end, opts)

--------------------------------------------------
-- URL open
--------------------------------------------------

map({ "n", "v" }, "gx", "<cmd>Browse<CR>", opts)

--------------------------------------------------
-- Harpoon
--------------------------------------------------

map("n", "<leader>h", function()
  require("harpoon.ui").toggle_quick_menu()
end, opts)

map("n", "<leader>ha", function()
  require("harpoon.mark").add_file()
end, opts)

--------------------------------------------------
-- Symbols
--------------------------------------------------

map("n", "<leader>ds", "<cmd>SymbolsOutline<CR>", opts)

--------------------------------------------------
-- File under cursor
--------------------------------------------------

map("n", "gf", function()
  local file = vim.fn.expand("<cfile>")

  if file == "" then
    return
  end

  local current_win = vim.api.nvim_get_current_win()

  local wins = vim.api.nvim_tabpage_list_wins(0)

  for _, win in ipairs(wins) do
    local buf = vim.api.nvim_win_get_buf(win)
    local buftype = vim.bo[buf].buftype

    if buftype ~= "terminal" then
      vim.api.nvim_set_current_win(win)
      vim.cmd("edit " .. vim.fn.fnameescape(file))
      return
    end
  end

  vim.api.nvim_set_current_win(current_win)
  vim.cmd("edit " .. vim.fn.fnameescape(file))
end)

map("n", "D", function()
  local current = vim.api.nvim_get_current_buf()

  vim.cmd("bnext")

  if vim.api.nvim_get_current_buf() == current then
    vim.cmd("enew")
  end

  vim.cmd("bdelete " .. current)
end, { noremap = true, silent = true }
)
