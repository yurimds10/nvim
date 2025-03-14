return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons"
  },

  config = function()
    Telescope = require("telescope")

    Telescope.setup({
      extensions = {
        fzy_native = true
      }
    })
  end
}
