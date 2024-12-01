{
  imports = [

    ./options/settings.nix
    ./options/keymaps.nix
    ./options/auto-cmds.nix

    # Completions
    ./plugins/completions/cmp.nix
    ./plugins/completions/friendly-snippets.nix
    ./plugins/completions/lspkind.nix
    ./plugins/completions/luasnip.nix
    
    # Editor
    ./plugins/editor/illuminate.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/navic.nix
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/rainbow-delimiters.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/undotree.nix

    # LSP
    ./plugins/lsp/formatting.nix
    ./plugins/lsp/lsp.nix

    # Mini
    ./plugins/mini/default.nix

    # Snacks

    # Theme
    ./plugins/themes/gruvbox-material-dark.nix

    # UI
    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/noice.nix

    # Utils
    ./plugins/utils/telescope.nix
    ./plugins/utils/which-key.nix
  ];
}
