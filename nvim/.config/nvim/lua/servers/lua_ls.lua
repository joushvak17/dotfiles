return {
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.stdpath("config") .. "/lua",
        },
      },
      telemetry = { enable = false },
    },
  },
}
