local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Language servers
require("servers.lua_ls")(capabilities)

vim.lsp.enable({
  "lua_ls",
})
