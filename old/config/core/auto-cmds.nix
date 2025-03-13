{
  autoGroups = {
    highlight_yank = {};
    vim_enter = {};
    indentscope = {};
    restore_cursor = {};
  };

  autoCmd = [
    ## from NVChad https://nvchad.com/docs/recipes (this autocmd will restore the cursor position when opening a file)
    {
      group = "restore_cursor";
      event = ["BufReadPost"];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if
              vim.fn.line "'\"" > 1
              and vim.fn.line "'\"" <= vim.fn.line "$"
              and vim.bo.filetype ~= "commit"
              and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
            then
              vim.cmd "normal! g`\""
            end
          end
        '';
      };
    }

    #-- resize splits if window got resized (from LazyVim)
    {
      group = "resize_splits";
      event = ["VimResized"];
      callback = {
        __raw = ''
          function()
            local current_tab = vim.fn.tabpagenr()
            vim.cmd("tabdo wincmd =")
            vim.cmd("tabnext " .. current_tab)
          end
        '';
      };
    }
  ];
}
