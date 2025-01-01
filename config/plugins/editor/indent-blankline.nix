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
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#fb2634" })
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#fadb2f" })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#83a598" })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#8ec07c" })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#b8bb26" })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#fe8919" })
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
