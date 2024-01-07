local keymap = vim.keymap.set

-- better up/down
keymap({ "n", "x" }, "j",      "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap({ "n", "x" }, "k",      "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap({ "n", "x" }, "<Up>",   "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window",  remap = true })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
keymap("n", "<C-Up>",    "<cmd>resize +2<cr>",          { desc = "Increase window height" })
keymap("n", "<C-Down>",  "<cmd>resize -2<cr>",          { desc = "Decrease window height" })
keymap("n", "<C-Left>",  "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
keymap("n", "<A-j>", "<cmd>m .+1<cr>==",        { desc = "Move down" })
keymap("n", "<A-k>", "<cmd>m .-2<cr>==",        { desc = "Move up" })
keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv",        { desc = "Move down" })
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv",        { desc = "Move up" })

-- buffers
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
keymap("n", "<S-l>", "<cmd>bnext<cr>",     { desc = "Next buffer" })
keymap("n", "[b", "<cmd>bprevious<cr>",    { desc = "Prev buffer" })
keymap("n", "]b", "<cmd>bnext<cr>",        { desc = "Next buffer" })
keymap("n", "<leader>bb", "<cmd>e #<cr>",  { desc = "Switch to Other Buffer" })
keymap("n", "<leader>`", "<cmd>e #<cr>",   { desc = "Switch to Other Buffer" })

-- Clear search with <esc>
keymap({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
keymap(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

-- Add undo break-points
keymap("i", ",", ",<c-g>u")
keymap("i", ".", ".<c-g>u")
keymap("i", ";", ";<c-g>u")

-- save file
keymap({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

--keywordprg
keymap("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

-- better indenting
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- lazy
keymap("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- new file
keymap("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

keymap("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
keymap("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

keymap("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
keymap("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })

-- quit
keymap("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- highlights under cursor
keymap("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })

-- Terminal Mappings
keymap("t", "<esc><esc>", "<c-\\><c-n>",  { desc = "Enter Normal Mode" })
keymap("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
keymap("t", "<C-/>", "<cmd>close<cr>",    { desc = "Hide Terminal" })
keymap("t", "<c-_>", "<cmd>close<cr>",    { desc = "which_key_ignore" })

-- windows
keymap("n", "<leader>ww", "<C-W>p", { desc = "Other window",       remap = true })
keymap("n", "<leader>wd", "<C-W>c", { desc = "Delete window",      remap = true })
keymap("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
keymap("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
keymap("n", "<leader>-", "<C-W>s",  { desc = "Split window below", remap = true })
keymap("n", "<leader>|", "<C-W>v",  { desc = "Split window right", remap = true })

-- tabs
keymap("n", "<leader><tab>l", "<cmd>tablast<cr>",     { desc = "Last Tab" })
keymap("n", "<leader><tab>f", "<cmd>tabfirst<cr>",    { desc = "First Tab" })
keymap("n", "<leader><tab><tab>", "<cmd>tabnew<cr>",  { desc = "New Tab" })
keymap("n", "<leader><tab>]", "<cmd>tabnext<cr>",     { desc = "Next Tab" })
keymap("n", "<leader><tab>d", "<cmd>tabclose<cr>",    { desc = "Close Tab" })
keymap("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })