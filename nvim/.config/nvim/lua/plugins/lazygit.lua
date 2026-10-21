-- Git interface
return {
  "kdheepak/lazygit.nvim",
  cmd = { "LazyGit", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitConfig" },
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>gg", "<Cmd>LazyGit<CR>", desc = "LazyGit" },
    { "<leader>gf", "<Cmd>LazyGitCurrentFile<CR>", desc = "LazyGit current file" },
  },
}
