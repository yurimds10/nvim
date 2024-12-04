{
  colorschemes.gruvbox = {
    enable = true;
    settings = {
      terminal_colors = true; #-- add neovim terminal colors
      undercurl = true;
      underline = true;
      bold = true;
      italic = {
        strings = true;
        emphasis = true;
        comments = true;
        operators = true;
        folds = true;
      };
      strikethrough = true;
      invert_selection = false;
      invert_signs = false;
      invert_tabline = false;
      invert_intend_guides = false;
      inverse = true; #-- invert background for search, diffs, statuslines and errors
      contrast = "hard"; #-- can be "hard", "soft" or empty string
      palette_overrides = {
        light0 = "#d4be98";
        light1 = "#ddc7a1";
        bright_red = "#ea6962";
        bright_orange = "#e78a4e";
        bright_yellow = "#d8a657";
        bright_green = "#a9b665";
        bright_aqua = "#89b482";
      };
      overrides = {};
      dim_inactive = false;
      transparent_mode = false;
    };
  };
}
