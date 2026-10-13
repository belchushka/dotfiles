local servers = {
	"lua_ls",
	"pyright",
	"jsonls",
  -- "ts_ls",
  "gopls",
  "html",
  "marksman",
  "tailwindcss",
  "cssls",
  "dockerls",
  "docker_compose_language_service",
  "clangd",
  "eslint",
  "rust_analyzer",
  "sqlls",
  "prismals",
  "ruff",
  "emmet_ls",
  "vtsls"
  -- "denols",
  -- "mypy",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = false,
})

local handlers = require("config.lsp.handlers")

for _, server in pairs(servers) do
  local opts = {
    on_attach = handlers.on_attach,
    capabilities = handlers.capabilities,
  }

  server = vim.split(server, "@")[1]

  local require_ok, conf_opts =
    pcall(require, "config.lsp.settings." .. server)

  if require_ok then
    -- merge capabilities
    opts.capabilities = vim.tbl_deep_extend(
      "force",
      opts.capabilities or {},
      conf_opts.capabilities or {}
    )

    -- compose on_attach
    local default_on_attach = opts.on_attach
    local custom_on_attach = conf_opts.on_attach

    if custom_on_attach then
      opts.on_attach = function(client, bufnr)
        default_on_attach(client, bufnr)
        custom_on_attach(client, bufnr)
      end
    end

    conf_opts.on_attach = nil
    conf_opts.capabilities = nil

    opts = vim.tbl_deep_extend("force", opts, conf_opts)
  end

  vim.lsp.config(server, opts)
  vim.lsp.enable(server)
end
