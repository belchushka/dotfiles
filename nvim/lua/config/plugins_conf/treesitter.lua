local is_ok, module = pcall(require, 'nvim-treesitter')

if not is_ok then
  vim.utils.notify_module_load_fail("nvim-treesitter")
  return
end

module.install({
  "typescript",
  "c",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "dart",
  "css",
  "dockerfile",
  "dot",
  "fish",
  "go",
  "javascript",
  "sql",
  "yaml",
  "prisma",
  "jsdoc",
})

require('ts_context_commentstring').setup {
  enable_autocmd = false,
  languages = {
    typescript = '// %s',
  },
}
