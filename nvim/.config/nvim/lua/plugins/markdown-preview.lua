-- Markdown preview
return {
  "iamcco/markdown-preview.nvim",
  ft = { "markdown" },
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  keys = {
    { "<leader>pm", "<Cmd>MarkdownPreviewToggle<CR>", ft = "markdown", desc = "Markdown preview" },
  },
}
