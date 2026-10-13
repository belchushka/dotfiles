local opts = {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),

  settings = {
    typescript = {
      updateImportsOnFileMove = {
        enabled = "always",
      },

      suggest = {
        completeFunctionCalls = true,
      },

      inlayHints = {
        enumMemberValues = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        parameterNames = {
          enabled = "literals",
        },
        parameterTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        variableTypes = { enabled = false },
      },
    },

    javascript = {
      updateImportsOnFileMove = {
        enabled = "always",
      },

      suggest = {
        completeFunctionCalls = true,
      },
    },

    vtsls = {
      enableMoveToFileCodeAction = true,
      autoUseWorkspaceTsdk = true,

      experimental = {
        completion = {
          enableServerSideFuzzyMatch = true,
        },
      },
    },
  },

  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
}

return opts
