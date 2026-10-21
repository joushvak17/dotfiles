-- Tmux pane navigation
return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  keys = {
    { "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", desc = "Move to left window or pane" },
    { "<C-j>", "<Cmd>TmuxNavigateDown<CR>", desc = "Move to bottom window or pane" },
    { "<C-k>", "<Cmd>TmuxNavigateUp<CR>", desc = "Move to top window or pane" },
    { "<C-l>", "<Cmd>TmuxNavigateRight<CR>", desc = "Move to right window or pane" },
    { "<C-\\>", "<Cmd>TmuxNavigatePrevious<CR>", desc = "Move to previous window or pane" },
  },
}
