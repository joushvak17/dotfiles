-- Kanagawa (dragon)
return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({ theme = "dragon", background = { dark = "dragon" } })
		vim.opt.background = "dark"
		vim.cmd.colorscheme("kanagawa-dragon")
	end,
}
