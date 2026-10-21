return {
  settings = {
    gopls = {
      staticcheck = true,
      usePlaceholders = true,
      completeUnimported = true,
      analyses = { unusedparams = true },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}
