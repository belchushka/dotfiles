local opts = {
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  init_options = {
    hostInfo = "neovim",
    maxTsServerMemory = 2048,
    disableAutomaticTypingAcquisition = true,
    preferences = {
      includeCompletionsForModuleExports = false,
      includeCompletionsForImportStatements = false,
      includePackageJsonAutoImports = "off",
      providePrefixAndSuffixTextForRename = false,
      provideRefactorNotApplicableReason = false,
    },
  },
  settings = {
    typescript = {
      tsserver = {
        useSyntaxServer = "auto",
        maxTsServerMemory = 2048,
      },
      suggest = { autoImports = false, completeFunctionCalls = false },
      inlayHints = {
        includeInlayParameterNameHints = "none",
        includeInlayFunctionParameterTypeHints = false,
        includeInlayVariableTypeHints = false,
        includeInlayPropertyDeclarationTypeHints = false,
        includeInlayFunctionLikeReturnTypeHints = false,
        includeInlayEnumMemberValueHints = false,
      },
    },
    javascript = {
      suggest = { autoImports = false, completeFunctionCalls = false },
      inlayHints = {
        includeInlayParameterNameHints = "none",
        includeInlayFunctionParameterTypeHints = false,
        includeInlayVariableTypeHints = false,
        includeInlayPropertyDeclarationTypeHints = false,
        includeInlayFunctionLikeReturnTypeHints = false,
        includeInlayEnumMemberValueHints = false,
      },
    },
  },
  root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
}

return opts
