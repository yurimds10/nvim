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
      contrast = ""; #-- can be "hard", "soft" or empty string
      palette_overrides = {};
      overrides = {
        "Directory" = { link = "GruvboxBlueBold"; };       
      };
      dim_inactive = false;
      transparent_mode = false;
    };
  };
}
