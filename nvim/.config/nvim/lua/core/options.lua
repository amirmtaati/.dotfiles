local opt = vim.opt
local g   = vim.g

opt.number         = true   -- Show number line
opt.relativenumber = true   -- Show relative number
--opt.errorbells     = false
opt.tabstop        = 4      -- Number of spaces in a tab
opt.termguicolors  = true   -- Enable 24-bit RGB color in the TUI
opt.softtabstop    = 4
opt.shiftwidth     = 4      -- Number of space inserted for indentation
opt.showmode       = false  -- Don't show the mode
opt.expandtab      = true
opt.smartindent    = true
opt.wrap           = false
opt.swapfile       = false
opt.backup         = false	
opt.history        = 100
opt.lazyredraw     = true    -- lazily redraw screen
opt.updatetime     = 50
opt.background     = "dark"
g.mapleader        = " "      -- Set leader key
 
