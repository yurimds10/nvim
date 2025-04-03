return {
  --[["uga-rosa/ccc.nvim",
  auto_enablee = false,

  config = function()
    require("ccc").setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    })
  end,
  ]]
}
