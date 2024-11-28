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
    ./plugins/mini/align.nix
    ./plugins/mini/diff.nix
    ./plugins/mini/hipatterns.nix
    ./plugins/mini/icons.nix
    ./plugins/mini/indentscope.nix
    ./plugins/mini/pairs.nix

    # Snacks

    # Theme

    # UI

    # Utils
  ];
}
