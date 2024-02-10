local is_ok, startup = pcall(require, "startup")

if not is_ok then
  vim.notify("unable to find startup nvim")
end

startup.setup({
  theme = "evil",
})
