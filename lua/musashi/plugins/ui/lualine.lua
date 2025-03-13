return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = { "VeryLazy" },
	config = function()
		local lualine = require("lualine")

		local colors = {
			blue = "#83a598",
			green = "#8ec07c",
			violet = "#d3869b",
			yellow = "#d8a657",
			red = "#ea6962",
			cream = "#fff4d2",
			black = "#1d2021",
			grey = "#393939",
			dark = "#282828",
		}

		local gruv_material = {
			normal = {
				a = { bg = colors.violet, fg = colors.black, gui = "bold" },
				b = { bg = colors.grey, fg = colors.cream, gui = "bold" },
				c = { bg = colors.dark, fg = colors.black, gui = "bold" },
			},
			insert = {
				a = { bg = colors.blue, fg = colors.black, gui = "bold" },
				c = { bg = colors.dark, fg = colors.black, gui = "bold" },
			},
			visual = {
				a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			command = {
				a = { bg = colors.green, fg = colors.black, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			terminal = {
				a = { bg = colors.red, fg = colors.black, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
			replace = {
				a = { bg = colors.blue, fg = colors.black, gui = "bold" },
				c = { bg = colors.dark, fg = colors.black, gui = "bold" },
			},
			inactive = {
				a = { bg = colors.green, fg = colors.black, gui = "bold" },
				c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
			},
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = gruv_material,
				component_separators = { left = "│", right = "│" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {
					"mode",
				},
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
					{
						"buffers",
						buffers_color = {
							active = { bg = colors.yellow, fg = colors.black, gui = "bold" },
							inactive = { bg = colors.grey, fg = colors.cream, gui = "italic" },
						},
						symbols = {
							modified = " ●",
							alternate_file = "",
							directory = "",
						},
						mode = 2,
					},
				},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {
					"searchcount",
					"selectioncount",
					"encoding",
					"filetype",
				},
				lualine_z = {
					"progress",
					"location",
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
		vim.opt.laststatus = 3
	end,
}
