local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local paths = require("config.lsp.paths")

null_ls.setup({
  sources = {
    diagnostics.mypy.with({
      command = paths.find_executable("mypy", 'venv'),
      extra_args = function()
        local args = { "--show-error-codes" }
        if vim.fn.filereadable("pyproject.toml") == 1 then
          table.insert(args, "--config-file")
          table.insert(args, "pyproject.toml")
        end
        return args
      end,
    }),

    formatting.prettier.with({
      command = paths.find_executable("prettier", 'node_modules'),
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote"
      }
    }),
  },
})
