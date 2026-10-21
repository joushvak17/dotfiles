local M = {}

function M.on_attach(event)
  local client = vim.lsp.get_client_by_id(event.data.client_id)
  if not client then
    return
  end

  local bufnr = event.buf
  local function map(lhs, rhs, desc)
    vim.keymap.set("n", lhs, rhs, { buffer = bufnr, silent = true, desc = desc })
  end

  -- Navigation
  map("gd", vim.lsp.buf.definition, "Go to definition")
  map("gD", vim.lsp.buf.declaration, "Go to declaration")
  map("<leader>fd", "<Cmd>FzfLua lsp_finder<CR>", "LSP finder")
  map("<leader>fr", "<Cmd>FzfLua lsp_references<CR>", "LSP references")
  map("<leader>ft", "<Cmd>FzfLua lsp_typedefs<CR>", "LSP type definitions")
  map("<leader>fi", "<Cmd>FzfLua lsp_implementations<CR>", "LSP implementations")

  -- Diagnostics
  map("<leader>ld", vim.diagnostic.open_float, "Line diagnostics")

  -- Actions
  if client:supports_method("textDocument/codeAction", bufnr) then
    map("<leader>oi", function()
      vim.lsp.buf.code_action({
        context = { only = { "source.organizeImports" }, diagnostics = {} },
        apply = true,
      })
    end, "Organize imports")
  end

  if client:supports_method("textDocument/inlayHint", bufnr) then
    map("<leader>lh", function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }), { bufnr = bufnr })
    end, "Toggle inlay hints")
  end
end

return M
