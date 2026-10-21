-- Restore cursor position
local last_cursor_group = vim.api.nvim_create_augroup("LastCursorGroup", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost", {
  group = last_cursor_group,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Highlight yanked text
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYank", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = highlight_yank_group,
  callback = function()
    vim.hl.on_yank({ timeout = 200 })
  end,
})

-- Trim whitespace on save
local trim_group = vim.api.nvim_create_augroup("TrimOnSaveGroup", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  group = trim_group,
  callback = function()
    local ok, trailspace = pcall(require, "mini.trailspace")
    if ok then
      trailspace.trim()
    end
  end,
})

-- LSP keymaps
local lsp_ok, lsp_utils = pcall(require, "utils.lsp")
if lsp_ok then
  local lsp_attach_group = vim.api.nvim_create_augroup("LspMappings", { clear = true })
  vim.api.nvim_create_autocmd("LspAttach", {
    group = lsp_attach_group,
    callback = lsp_utils.on_attach,
  })
end

-- Text file options
local prose_group = vim.api.nvim_create_augroup("ProseOptions", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = prose_group,
  pattern = { "markdown", "text", "gitcommit" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.relativenumber = false
    vim.opt_local.number = false
    vim.opt_local.cursorline = false
    vim.opt_local.colorcolumn = ""
    vim.opt_local.signcolumn = "no"
  end,
})
