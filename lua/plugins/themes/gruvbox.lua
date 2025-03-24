return {
  "ellisonleao/gruvbox.nvim",
  config = function()
    require("gruvbox").setup({
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = true,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      palette_overrides = {
        bright_red = "#EA6962",
        bright_yellow = "#DEA447",
        bright_green = "#868933",
        bright_blue = "#A58D4B",
        bright_purple = "#c4c197",
        light1 = "#ACA27A",
      },
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    })
  end,
}
