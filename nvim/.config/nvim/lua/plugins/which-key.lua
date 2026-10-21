-- Keymap hints
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  opts = {
    spec = {
      { "<leader>b", group = "buffer" },
      { "<leader>d", group = "debug" },
      { "<leader>f", group = "find" },
      { "<leader>g", group = "git" },
      { "<leader>h", group = "hunks" },
      { "<leader>l", group = "lsp" },
      { "<leader>m", group = "cmake" },
      { "<leader>r", group = "rust / config" },
      { "<leader>s", group = "split" },
    },
  },
}
