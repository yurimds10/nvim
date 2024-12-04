{ pkgs, ... }:
{
  extraConfigLuaPre = ''
    vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
    vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
    vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
    vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
  '';

  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      configs = true;
      plugins = true;
    };
  };

  clipboard = {
    # Use system clipboard
    register = "unnamedplus";

    providers = {
      wl-copy = {
        enable = true;
        package = pkgs.wl-clipboard;
      };
    };
  };

  opts = {
    breakindent = true;         # Enable smart indenting
    cmdheight = 0;              # More space in the neovim command line for displaying messages
    cursorline = true;          # Enable cursor line highlight
    encoding = "utf-8";         # Set encoding type
    expandtab = true;           #
    fileencoding = "utf-8";     # Set encoding type
    fillchars = {               #
      eob = " ";
    }; 
    foldenable = false;         #
    foldmethod = "manual";      #
    grepprg = "rg --vimgrep";   #
    grepformat = "%f:%l:%c:%m"; #
    linebreak = true;           #
    mouse = "a";                # Enable mouse mode
    number = true;              #
    relativenumber = false;     #
    scrolloff = 4;              #
    shiftwidth = 2;             #
    showmode = false;           #
    showtabline = 2;            #
    signcolumn = "yes";         # Enable the sign column to prevent the screen from jumping
  	smartindent = true;         #
    softtabstop = 2;            #
    spell = false;              #
    splitbelow = true;          #
    splitkeep = "screen";       #
    splitright = true;          #
    swapfile = false;           #
    tabstop = 2;                #
    termguicolors = true;       # Enable 24-bit colors
    timeoutlen = 300;           #
    wrap = false;               # Disable line wrap
  };
}
