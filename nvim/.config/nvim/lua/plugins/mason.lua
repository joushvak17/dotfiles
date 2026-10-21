-- Tool installer
return {
  { "mason-org/mason.nvim", lazy = false, opts = {} },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        -- Language servers
        "lua-language-server",
        "basedpyright",
        "ruff",
        "gopls",
        "clangd",
        "neocmakelsp",
        "bash-language-server",
        "yaml-language-server",
        "json-lsp",

        -- Formatters and linters
        "stylua",
        "gofumpt",
        "goimports",
        "golangci-lint",
        "clang-format",
        "gersemi",
        "shfmt",
        "shellcheck",

        -- Debuggers
        "codelldb",
        "delve",
        "debugpy",
      },
    },
  },
}
