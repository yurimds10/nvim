vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.breakindent = true         -- Enable smart indenting
opt.cmdheight = 0              -- More space in the neovim command line for displaying messages
opt.cursorline = true          -- Enable cursor line highlight
opt.encoding = "utf-8"         -- Set encoding type
opt.expandtab = true           
opt.fileencoding = "utf-8"     -- Set encoding type
opt.fillchars = { eob = " " }
opt.foldenable = false         
opt.foldmethod = "manual"      
opt.grepprg = "rg --vimgrep"   
opt.grepformat = "%f:%l:%c:%m" 
opt.linebreak = true           
opt.mouse = "a"                -- Enable mouse mode
opt.number = true
opt.pumblend = 10              -- Popup blend
opt.pumheight = 10             -- Maximum number of entries in a popup
opt.relativenumber = false     
opt.scrolloff = 4              -- Lines of context
opt.shiftwidth = 2             
opt.showmode = false         
opt.showtabline = 2            
opt.signcolumn = "yes"         -- Enable the sign column to prevent the screen from jumping
opt.smartindent = true     
opt.softtabstop = 2            
opt.spell = false              
opt.splitbelow = true          
opt.splitkeep = "screen"       
opt.splitright = true          
opt.swapfile = false           
opt.tabstop = 2                
opt.termguicolors = true       -- Enable 24-bit colors
opt.timeoutlen = 300           
opt.wrap = false               -- Disable line wrap
