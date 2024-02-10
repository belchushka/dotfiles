require('utils.notify_module_load_fail')

local is_ok, module = pcall(require, 'nvim-treesitter.configs')

if not is_ok then
  notify_module_load_fail("nvim-treesitter")
  return
end

module.setup {
  ensure_installed = {
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
    "yaml"
  },
  auto_install = true,
  autotag = {
    enable = true
  }
}

require('ts_context_commentstring').setup {
  enable_autocmd = false,
  languages = {
    typescript = '// %s',
  },
}
