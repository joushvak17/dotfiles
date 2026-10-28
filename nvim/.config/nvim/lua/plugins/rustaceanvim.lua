-- Rust
return {
	"mrcjkb/rustaceanvim",
	version = "^9",
	lazy = false,
	init = function()
		vim.g.rustaceanvim = {
			server = {
				default_settings = {
					["rust-analyzer"] = {
						cargo = { allFeatures = true },
						check = { command = "clippy" },
					},
				},
				on_attach = function(_, bufnr)
					local function map(lhs, cmd, desc)
						vim.keymap.set("n", lhs, function()
							vim.cmd.RustLsp(cmd)
						end, { buffer = bufnr, desc = desc })
					end

					map("<leader>rr", "runnables", "Rust runnables")
					map("<leader>rd", "debuggables", "Rust debuggables")
					map("<leader>rt", "testables", "Rust testables")
					map("<leader>rm", "expandMacro", "Expand macro")
					map("<leader>re", "explainError", "Explain error")
				end,
			},
		}
	end,
}
