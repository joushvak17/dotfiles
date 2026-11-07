-- Token (meridian)
return {
	"ThorstenRhau/token",
	version = "*",
	lazy = false,
	priority = 1000,
	config = function()
		require("token").setup({
			-- Highlight integrations are opt-in; these match the installed plugins
			plugins = {
				blink = true,
				dap_ui = true,
				diffview = true,
				fzf = true,
				gitsigns = true,
				lazy = true,
				mason = true,
				mini = true,
				nvimtree = true,
				whichkey = true,
			},
		})
		vim.o.background = "dark"
		vim.cmd.colorscheme("token-meridian")
	end,
}
