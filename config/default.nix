{
  imports = [

    ./options/settings.nix
    ./options/keymaps.nix
    ./options/auto-cmds.nix

    # Completions
    ./plugins/completions/cmp.nix
    
    # Editor
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/treesitter.nix

    # LSP
    ./plugins/lsp/lsp.nix

    # Mini
    ./plugins/mini/default.nix

    # Snacks

    # Theme
    ./plugins/themes/gruvbox-dark.nix

    # UI

    # Utils
  ];
}
