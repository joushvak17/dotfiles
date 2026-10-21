-- Diff viewer
return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewToggleFiles" },
  keys = {
    { "<leader>gd", "<Cmd>DiffviewOpen<CR>", desc = "Diff view" },
    { "<leader>gh", "<Cmd>DiffviewFileHistory %<CR>", desc = "File history" },
    { "<leader>gH", "<Cmd>DiffviewFileHistory<CR>", desc = "Repo history" },
    { "<leader>gq", "<Cmd>DiffviewClose<CR>", desc = "Close diff view" },
  },
  opts = {},
}
