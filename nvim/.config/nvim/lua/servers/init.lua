vim.lsp.config("*", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})

-- Language servers
local servers = {
  "lua_ls",
  "basedpyright",
  "ruff",
  "gopls",
  "clangd",
  "neocmakelsp",
  "bashls",
  "yamlls",
  "jsonls",
}

for _, name in ipairs(servers) do
  vim.lsp.config(name, require("servers." .. name))
end

vim.lsp.enable(servers)
