local is_ok, module = pcall(require, 'avante')

if not is_ok then
  vim.utils.notify_module_load_fail("avante")
  return
end

module.setup({
  provider = 'copilot',
  cursor_applying_provider = 'copilot',
  mappings = {
    ask = "<C-i>",
    edit = "<C-k>",
  },
  providers = {
    copilot = {
      model = "claude-3.7-sonnet"
    },
    claude = {
      model = "claude-3-5-sonnet-latest"
    },
  },  
  behaviour = {
    enable_cursor_planning_mode=true
  },
  system_prompt = function()
    local hub = require("mcphub").get_hub_instance()
    return hub and hub:get_active_servers_prompt() or ""
  end,
  custom_tools = function()
    return {
      require("mcphub.extensions.avante").mcp_tool(),
    }
  end,
})

