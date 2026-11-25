-- Tender
return {
	"jacoborus/tender.vim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("tender")
	end,
}
