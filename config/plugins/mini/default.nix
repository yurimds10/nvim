{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
  };

  imports = [
    ./align.nix
    ./diff.nix
    ./hipatterns.nix
    ./icons.nix
    ./indentscope.nix
    ./pairs.nix
  ];
}
