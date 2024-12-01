{
  plugins.indent-blankline = {
    enable = true;
  };

  extraConfigLua = ''
    local highlight = {
			"RainbowRed",
			"RainbowYellow",
			"RainbowBlue",
			"RainbowCyan",
			"RainbowGreen",
			"RainbowOrange",
			"RainbowMagenta",
		}

		local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ea6962" })
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#d8a657" })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7daea3" })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#89b482" })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#a9b665" })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#e78a4e" })
			vim.api.nvim_set_hl(0, "RainbowMagenta", { fg = "#d3869b" })
		end)

		local ibl = require("ibl")
		ibl.setup({
			indent = {
				char = "│",
				tab_char = "│",
				highlight = highlight,
			},
			scope = {
				enabled = false,
			},
			vim.opt.listchars:append("space: "),
		})
  '';

}
