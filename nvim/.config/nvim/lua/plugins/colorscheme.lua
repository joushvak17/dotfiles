-- Kanagawa (wave)
return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({ theme = "wave", background = { dark = "wave" } })
		vim.opt.background = "dark"
		vim.cmd.colorscheme("kanagawa-wave")
	end,
}
