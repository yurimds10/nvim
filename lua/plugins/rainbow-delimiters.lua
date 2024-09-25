return {
  "hiphish/rainbow-delimiters.nvim",
  config = function()
    require("rainbow-delimiters.setup").setup({
      strategy = {},
      query = {},
      highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      },
    })
  end
}
