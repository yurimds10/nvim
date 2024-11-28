{
  extraConfigLuaPre = ''
    vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
    vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
    vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
    vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })
  '';

  clipboard = {
    providers.wl-copy.enable = true;
  };

  opts = {
    breakindent = true;        #
    clipboard = "unnamedplus"; #
    cmdheight = 0;             #
    cursorline = true;         #
    expandtab = true;          #
    fillchars = {              #
      eob = " ";
    }; 
    foldenable = false;        #
    foldmethod = "manual";     #
    linebreak = true;          #
    mouse = "a";               # Enable mouse mode
    number = true;             #
    relativenumber = false;    #
    scrolloff = 4;             #
    shiftwidth = 2;            #
    showmode = false;          #
    showtabline = 2;           #
  	smartindent = true;        #
    softtabstop = 2;           #
    spell = false;             #
    splitbelow = true;         #
    splitkeep = "screen";      #
    splitright = true;         #
    swapfile = false;          #
    tabstop = 2;               #
    termguicolors = true;      #
    timeoutlen = 300;          #
    wrap = false;              # Disable line wrap
  };
}
