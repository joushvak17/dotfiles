local M = {}

function M.setup()
  local icon = vim.fn.nr2char

  vim.diagnostic.config({
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = icon(0xf057) .. " ",
        [vim.diagnostic.severity.WARN] = icon(0xf071) .. " ",
        [vim.diagnostic.severity.INFO] = icon(0xf05a) .. " ",
        [vim.diagnostic.severity.HINT] = icon(0xf0eb) .. " ",
      },
    },
    virtual_text = { spacing = 2, source = "if_many" },
    float = { source = true },
    severity_sort = true,
    update_in_insert = false,
  })
end

return M
