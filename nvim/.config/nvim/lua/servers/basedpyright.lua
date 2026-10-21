return {
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
      analysis = {
        typeCheckingMode = "standard",
        diagnosticMode = "openFilesOnly",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        autoImportCompletions = true,
      },
    },
  },
}
