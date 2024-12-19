local lspconfig = require("lspconfig")
local root_pattern = lspconfig.util.root_pattern

local is_ok, module = pcall(require, 'typescript-tools');

if not is_ok then
  vim.utils.notify_module_fail('typescript-tools')
  return
end

module.setup({
  root_dir = function (filename, bufnr)
    local denoRootDir = root_pattern("deno.json", "deno.json")(filename);
    if denoRootDir then
      return nil;
    end

    return root_pattern("package.json")(filename);
  end,

  single_file_support = false,
})
