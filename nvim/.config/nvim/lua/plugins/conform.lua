-- Formatting
return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  cmd = "ConformInfo",
  keys = {
    {
      "<leader>lf",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_organize_imports", "ruff_format" },
      go = { "goimports", "gofumpt" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      rust = { "rustfmt" },
      cmake = { "gersemi" },
      sh = { "shfmt" },
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_format = "fallback",
    },
  },
}
