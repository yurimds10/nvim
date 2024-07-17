return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
      "c",
      "cmake",
      "cpp",
      "css",
      "fish",
      "gitignore",
      "go",
      "graphql",
      "http",
      "java",
      "lua",
      "rust",
      "scss",
      "sql",
      "typescript"
    },

    highlight = {
      enable = true,
    },
  },
}
