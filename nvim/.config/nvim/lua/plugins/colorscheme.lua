-- Jellybeans
return {
	"nanotech/jellybeans.vim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("jellybeans")
	end,
}
