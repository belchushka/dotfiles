local opts = {
  number = true,
  backup = false,
  clipboard = 'unnamedplus',
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = 'a',
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  termguicolors = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  relativenumber = false,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
}

local global = {
  loaded_netrw  = 1,
  loaded_netrwPlugin = 1
}

for key,value in pairs(opts) do
  vim.opt[key] = value
end

for key,value in pairs(global) do
  vim.g[key] = value
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set t_Co=256]]
