local is_ok, _ = pcall(require, 'lspconfig')

if not is_ok then
  vim.notify('failed to load lspconfig')
end

require "config.lsp.mason"
require("config.lsp.handlers").setup()
require("config.lsp.none-ls")
-- require("config.lsp.ts-tools")
