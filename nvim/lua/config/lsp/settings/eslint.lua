local opts = {
  settings = {
    workingDirectory = { mode = "auto" },

    experimental = {
      useFlatConfig = false,
    },

    format = true,

    validate = "on",

    codeAction = {
      disableRuleComment = {
        enable = true,
        location = "separateLine",
      },

      showDocumentation = {
        enable = true,
      },
    },

    codeActionOnSave = {
      enable = true,
      mode = "all",
    },
  },

  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = true

    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,

      callback = function()
        local params = vim.lsp.util.make_range_params()

        params.context = {
          only = { "source.fixAll.eslint" },
          diagnostics = {},
        }

        local result = vim.lsp.buf_request_sync(
          bufnr,
          "textDocument/codeAction",
          params,
          3000
        )

        for _, res in pairs(result or {}) do
          for _, action in pairs(res.result or {}) do
            if action.edit then
              vim.lsp.util.apply_workspace_edit(
                action.edit,
                "utf-8"
              )
            end

            if action.command then
              vim.lsp.buf.execute_command(action.command)
            end
          end
        end
      end,
    })
  end
}

return opts
