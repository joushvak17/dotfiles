-- Statusline
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Miasma palette (same colors as the starship prompt)
		local c = {
			bg = "#222222",
			bg1 = "#444444",
			fg = "#c2c2b0",
			gray = "#666666",
			terracotta = "#b36d43",
			gold = "#c9a554",
			olive = "#78824b",
			green = "#5f875f",
			sand = "#d7c483",
		}

		local function mode(color)
			return {
				a = { fg = c.bg, bg = color, gui = "bold" },
				b = { fg = c.fg, bg = c.bg1 },
				c = { fg = c.fg, bg = c.bg },
			}
		end

		local miasma = {
			normal = mode(c.green),
			insert = mode(c.gold),
			visual = mode(c.terracotta),
			replace = mode(c.olive),
			command = mode(c.sand),
			inactive = {
				a = { fg = c.gray, bg = c.bg },
				b = { fg = c.gray, bg = c.bg },
				c = { fg = c.gray, bg = c.bg },
			},
		}

		require("lualine").setup({
			options = {
				theme = miasma,
				icons_enabled = true,
				section_separators = { left = "", right = "" },
				component_separators = "|",
			},
		})
	end,
}
