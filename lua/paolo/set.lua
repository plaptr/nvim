vim.opt.guicursor = ""
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"


function _G.MyFoldText()
    return vim.fn.getline(vim.v.foldstart)
end

vim.opt.foldmethod = "expr"
vim.opt.fillchars:append({ fold = " " })
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldtext = 'v:lua.MyFoldText()'
vim.opt.foldlevel = 999

vim.opt.ignorecase = true
vim.opt.smartcase = true
