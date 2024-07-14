--sign icons--
vim.fn.sign_define("DiagnosticSignError",
  { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",
  { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo",
  { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint",
  { text = "󰌵", texthl = "DiagnosticSignHint" })

--general settings--
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.wo.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.cmd('colorscheme molokai')
vim.cmd [[ set termguicolors ]]
vim.cmd [[ set noswapfile ]]
vim.cmd [[ set scrolloff=7 ]]
vim.cmd [[ set undofile ]]

-- vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.clipboard = "unnamedplus"
