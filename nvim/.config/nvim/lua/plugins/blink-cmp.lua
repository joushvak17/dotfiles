-- Completion
return {
  "saghen/blink.cmp",
  version = "1.*",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    keymap = {
      preset = "none",
      ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },
    },
    appearance = { nerd_font_variant = "mono" },
    completion = {
      list = { selection = { preselect = false, auto_insert = false } },
      documentation = { auto_show = true, auto_show_delay_ms = 300 },
    },
    signature = { enabled = true },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
