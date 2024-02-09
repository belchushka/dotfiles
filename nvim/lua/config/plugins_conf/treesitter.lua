local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"typescript", "c", "lua", "vim", "vimdoc", "query", "dart", "css", "dockerfile", "dot", "fish", "go", "javascript", "sql", "yaml" },
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
