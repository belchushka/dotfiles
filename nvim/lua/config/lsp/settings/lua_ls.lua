local is_ok, neodev = pcall(require, 'neodev')

if is_ok then
  neodev.setup({})
end

local opts = {
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
}

return opts
