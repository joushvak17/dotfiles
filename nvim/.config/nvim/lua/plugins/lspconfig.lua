-- Language servers
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "mason-org/mason.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    require("utils.diagnostics").setup()
    require("servers")
  end,
}
